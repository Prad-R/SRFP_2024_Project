#ifndef DSMC_HPP
#define DSMC_HPP

#include<iostream>
#include<fstream>
#include<vector>
#include<cmath>

// -------------------------------------
// Declaration of extern variables
// -------------------------------------

/*
    N is the number of quasi-particles
    Nbox is the number of boxes in each dimension
*/

extern const int N, Nbox;

/*
    R is the particle radius
    L is the system size with periodic boundary conditions
    eps is the coefficient of restitution
    tend is the simulation time    
*/

extern const double R, L, eps, tend;

// C1 is constant numerical coefficient to define the number of candidate pairs for collision

extern const double C1;

// Coordinates and velocities of the particles

extern std::vector <double> x, y, z, vx, vy, vz;

//s List of particle indices located at each lattice site

extern std::vector <std::vector <std::vector < std::vector <int> > > > latt;

// Number of collisions (fractional) that could not be handled in the current timestep and are being carried over the next step

extern std::vector <std::vector <std::vector <double> > > dcollrest;

/*
    vmax is the maximal particle velocity
    energy is the total KE of the system
    dt is the simulation timestep
*/

extern double vmax, energy, dt;

// ------------------------------------------
// Declaration of functions
// ------------------------------------------

extern inline double vmax_estimate() { return sqrt(energy / N) * 20; }

// ranf(x) generates uniform random number between [0, x)

extern inline double ranf(double x) { return double(rand()) * x / (double(RAND_MAX)); }

double Gaussian(double mu, double sigma);

void init();

void sort();

void propagate();

int paircollision(int i, int j);

int collision();

#endif