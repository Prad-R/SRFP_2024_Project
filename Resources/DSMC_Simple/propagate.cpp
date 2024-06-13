#include "dsmc.hpp"

void propagate(){
    for(int i = 0; i < N; i++){
        // fmod(x, y) is similar to the modulo operation x mod y except that y need not be an integer

        x[i] = fmod(x[i] + vx[i] * dt + L, L);
        y[i] = fmod(y[i] + vy[i] * dt + L, L);
        z[i] = fmod(z[i] + vz[i] * dt + L, L);
    }
}