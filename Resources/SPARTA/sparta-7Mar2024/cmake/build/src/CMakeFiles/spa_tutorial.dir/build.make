# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build

# Include any dependencies generated for this target.
include src/CMakeFiles/spa_tutorial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/spa_tutorial.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/spa_tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/spa_tutorial.dir/flags.make

src/CMakeFiles/spa_tutorial.dir/main.cpp.o: src/CMakeFiles/spa_tutorial.dir/flags.make
src/CMakeFiles/spa_tutorial.dir/main.cpp.o: /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/src/main.cpp
src/CMakeFiles/spa_tutorial.dir/main.cpp.o: src/CMakeFiles/spa_tutorial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/spa_tutorial.dir/main.cpp.o"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/lib/kokkos/bin/kokkos_launch_compiler /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/lib/kokkos/bin/nvcc_wrapper /usr/bin/c++ /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/spa_tutorial.dir/main.cpp.o -MF CMakeFiles/spa_tutorial.dir/main.cpp.o.d -o CMakeFiles/spa_tutorial.dir/main.cpp.o -c /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/src/main.cpp

src/CMakeFiles/spa_tutorial.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spa_tutorial.dir/main.cpp.i"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/src/main.cpp > CMakeFiles/spa_tutorial.dir/main.cpp.i

src/CMakeFiles/spa_tutorial.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spa_tutorial.dir/main.cpp.s"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/src/main.cpp -o CMakeFiles/spa_tutorial.dir/main.cpp.s

# Object files for target spa_tutorial
spa_tutorial_OBJECTS = \
"CMakeFiles/spa_tutorial.dir/main.cpp.o"

# External object files for target spa_tutorial
spa_tutorial_EXTERNAL_OBJECTS =

src/spa_tutorial: src/CMakeFiles/spa_tutorial.dir/main.cpp.o
src/spa_tutorial: src/CMakeFiles/spa_tutorial.dir/build.make
src/spa_tutorial: src/libsparta_tutorial.a
src/spa_tutorial: src/FFT/libpkg_fft.a
src/spa_tutorial: src/KOKKOS/libpkg_kokkos.a
src/spa_tutorial: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
src/spa_tutorial: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
src/spa_tutorial: src/KOKKOS/lib/kokkos/containers/src/libkokkoscontainers.a
src/spa_tutorial: src/KOKKOS/lib/kokkos/core/src/libkokkoscore.a
src/spa_tutorial: /usr/lib/x86_64-linux-gnu/libcuda.so
src/spa_tutorial: /usr/local/cuda-12.5/lib64/libcudart.so
src/spa_tutorial: /usr/lib/gcc/x86_64-linux-gnu/12/libgomp.so
src/spa_tutorial: /usr/lib/x86_64-linux-gnu/libpthread.a
src/spa_tutorial: src/KOKKOS/lib/kokkos/simd/src/libkokkossimd.a
src/spa_tutorial: src/CMakeFiles/spa_tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spa_tutorial"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spa_tutorial.dir/link.txt --verbose=$(VERBOSE)
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && size spa_tutorial

# Rule to build all files generated by this target.
src/CMakeFiles/spa_tutorial.dir/build: src/spa_tutorial
.PHONY : src/CMakeFiles/spa_tutorial.dir/build

src/CMakeFiles/spa_tutorial.dir/clean:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src && $(CMAKE_COMMAND) -P CMakeFiles/spa_tutorial.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/spa_tutorial.dir/clean

src/CMakeFiles/spa_tutorial.dir/depend:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/src /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-7Mar2024/cmake/build/src/CMakeFiles/spa_tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/spa_tutorial.dir/depend
