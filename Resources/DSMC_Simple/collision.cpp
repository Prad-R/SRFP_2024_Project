#include "dsmc.hpp"

const double R = 1;
const double C1 = 4 * M_PI * (R * R) * (Nbox * Nbox * Nbox) / (L * L * L);

int collision(){
    int ncols = 0;

    for(int ix = 0; ix < Nbox; ix ++){
        for(int iy = 0; iy < Nbox; iy ++){
            for(int iz = 0; iz < Nbox; iz ++){
                
                // Determining the number of particles in a grid
                int np = latt[ix][iy][iz].size();

                if (np > 1){
                    double dcoll = C1 * np * (np - 1) * vmax * dt + dcollrest[ix][iy][iz];
                    int ncoll = int(dcoll);

                    dcollrest[ix][iy][iz] = dcoll - ncoll;

                    for(int icol = 0; icol < ncoll ; icol++){
                        int index1 = (int)(ranf(np));
                        int index2 = ((int)(index1 + ranf(np - 1)) + 1) % np;
                        int p1 = latt[ix][iy][iz][index1];
                        int p2 = latt[ix][iy][iz][index2];

                        ncols += paircollision(p1, p2);
                    }
                }
            }
        }
    }

    return ncols;
}