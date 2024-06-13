#include "dsmc.hpp"

// Declaring extern variables that will be used

const int Nbox = 1;
const double tend = 1000;
double vmax = 0, energy = 0, dt = 0;

int main(){
    // The initialization function is first called
    init();

    /*
        it is the number of time steps performed
        ncols is the cummulative number of collisions
        time is the current time
    */

    int it = 0, ncols = 0;
    double time = 0;

    while(time < tend){
        vmax = vmax_estimate();
        dt = 0.2 * L / Nbox / vmax;
        time += dt;
        propagate();
        sort();
        ncols += collision();
        it ++;
        std::cout << time << " " << ncols << " " << energy << std::endl;
    }
}