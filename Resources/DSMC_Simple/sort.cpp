#include "dsmc.hpp"

void sort(){
    for (int ix = 0; ix < Nbox; ix++){
        for (int iy = 0; iy < Nbox; iy++){
            for (int iz = 0; iz < Nbox; iz++){
                latt[ix][iy][iz].clear();
            }
        }
    }

    for (int i = 0; i < N; i ++){
        int ix = (int) (Nbox * x[i] / L);
        int iy = (int) (Nbox * y[i] / L);
        int iz = (int) (Nbox * z[i] / L);
        latt[ix][iy][iz].push_back(i);
    }
}