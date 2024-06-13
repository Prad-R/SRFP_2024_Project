#include "dsmc.hpp"

// Generating Gaussian random numbers using the Box-Muller algorithm

double Gaussian(double mu, double sigma){
    static bool first = true;
    static double sqrt2logx1, twopix2;

    if(first){
        first = false;
        sqrt2logx1 = sqrt(-2 * log(drand48()));
        twopix2 = 2 * M_PI * drand48();

        return  mu + sigma * sqrt2logx1 * cos(twopix2);
    }
    else{
        first = true;
        return mu + sigma * sqrt2logx1 * sin(twopix2);
    }
}