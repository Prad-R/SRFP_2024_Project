To build the SPARTA library with the Kokkos package and the FFT package enabled along with GPU parallelisation, go to the [cmake](sparta-7Mar2024/cmake) directory and use the following commands : -

1. `mkdir build`
2. `cd build`
3. `cmake -LH -DSPARTA_MACHINE=tutorial -DPKG_FFT=ON -DPKG_KOKKOS=ON -DKokkos_ENABLE_CUDA=ON -DKokkos_ARCH_AMPERE80=ON ./..`

This should create an executation `spa_tutorial` in the [src](sparta-7Mar2024/cmake/build/src) directory and a library file `libsparta.a`.
