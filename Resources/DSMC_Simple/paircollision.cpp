#include "dsmc.hpp"

const double eps = 0.8;

int paircollision(int i, int j){
    double dvx = (vx[i] - vx[j]);
    double dvy = (vy[i] - vy[j]);
    double dvz = (vz[i] - vz[j]);

    double phi = ranf(2 * M_PI);
    double costheta = ranf(2) - 1;
    double sintheta = sqrt(1 - costheta * costheta);
    double ndx = cos(phi) * sintheta;
    double ndy = sin(phi) * sintheta;
    double ndz = costheta;
    double vnorm = dvx * ndx + dvy * ndy + dvz * ndz;

    if(fabs(vnorm) < ranf(vmax)) return 0;

    double h = (1 + eps) * vnorm / 2;
    vx[i] -= h * ndx; vy[i] -= h * ndy; vz[i] -= h * ndz;
    vx[j] += h * ndx; vy[j] += h * ndy; vz[j] += h * ndz;

    energy -= (1 - eps * eps) / 4 * vnorm * vnorm;
    return 1;
}