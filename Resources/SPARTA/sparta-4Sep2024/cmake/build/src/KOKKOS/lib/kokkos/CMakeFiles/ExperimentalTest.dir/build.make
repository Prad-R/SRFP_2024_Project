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
CMAKE_SOURCE_DIR = /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build

# Utility rule file for ExperimentalTest.

# Include any custom commands dependencies for this target.
include src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/compiler_depend.make

# Include the progress variables for this target.
include src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/progress.make

src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos && /usr/bin/ctest -D ExperimentalTest

ExperimentalTest: src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest
ExperimentalTest: src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/build.make
.PHONY : ExperimentalTest

# Rule to build all files generated by this target.
src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/build: ExperimentalTest
.PHONY : src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/build

src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/clean:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalTest.dir/cmake_clean.cmake
.PHONY : src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/clean

src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/depend:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/KOKKOS/lib/kokkos/CMakeFiles/ExperimentalTest.dir/depend
