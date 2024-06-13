#include "dsmc.hpp"

// Declaring extern variables that will be used

const int N = 100000;
const double L = 215.44347;
std::vector <double> x(N), y(N), z(N), vx(N), vy(N), vz(N);
std::vector <std::vector <std::vector < std::vector <int> > > > latt;
std::vector <std::vector <std::vector <double> > > dcollrest;

void init(){
    latt.resize(Nbox);
    dcollrest.resize(Nbox);

    for(int ix = 0; ix < Nbox; ix++){
        latt[ix].resize(Nbox);
        dcollrest[ix].resize(Nbox);

        for(int iy = 0; iy < Nbox; iy++){
            latt[ix][iy].resize(Nbox);
            dcollrest[ix][iy].resize(Nbox);
        }
    }

    double vcomx = 0, vcomy = 0, vcomz = 0;

    for(int i = 0; i < N; i++){
        x[i] = ranf(L); y[i] = ranf(L); z[i] = ranf(L);

        vx[i] = Gaussian(0, 1); vy[i] = Gaussian(0, 1); vz[i] = Gaussian(0, 1);

        vcomx += vx[i]; vcomy += vy[i]; vcomz += vz[i];
    }

    vcomx /= N; vcomy /= N; vcomz /= N;

    for(int i = 0; i < N; i++){
        vx[i] -= vcomx; vy[i] -= vcomy; vz[i] -= vcomz;

        energy += vx[i] * vx[i] + vy[i] * vy[i] + vz[i] * vz[i];
    }

    energy /= 2;
}