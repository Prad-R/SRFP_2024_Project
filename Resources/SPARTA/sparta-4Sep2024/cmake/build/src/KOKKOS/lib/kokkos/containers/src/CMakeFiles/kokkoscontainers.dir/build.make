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

# Include any dependencies generated for this target.
include src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/compiler_depend.make

# Include the progress variables for this target.
include src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/progress.make

# Include the compile flags for this target's objects.
include src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/flags.make

src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o: src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/flags.make
src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o: /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/containers/src/impl/Kokkos_UnorderedMap_impl.cpp
src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o: src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/bin/kokkos_launch_compiler /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/bin/nvcc_wrapper /usr/bin/c++ /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o -MF CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o.d -o CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o -c /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/containers/src/impl/Kokkos_UnorderedMap_impl.cpp

src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.i"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/containers/src/impl/Kokkos_UnorderedMap_impl.cpp > CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.i

src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.s"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/containers/src/impl/Kokkos_UnorderedMap_impl.cpp -o CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.s

# Object files for target kokkoscontainers
kokkoscontainers_OBJECTS = \
"CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o"

# External object files for target kokkoscontainers
kokkoscontainers_EXTERNAL_OBJECTS =

src/KOKKOS/lib/kokkos/containers/src/libkokkoscontainers.a: src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/impl/Kokkos_UnorderedMap_impl.cpp.o
src/KOKKOS/lib/kokkos/containers/src/libkokkoscontainers.a: src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/build.make
src/KOKKOS/lib/kokkos/containers/src/libkokkoscontainers.a: src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libkokkoscontainers.a"
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && $(CMAKE_COMMAND) -P CMakeFiles/kokkoscontainers.dir/cmake_clean_target.cmake
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kokkoscontainers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/build: src/KOKKOS/lib/kokkos/containers/src/libkokkoscontainers.a
.PHONY : src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/build

src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/clean:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src && $(CMAKE_COMMAND) -P CMakeFiles/kokkoscontainers.dir/cmake_clean.cmake
.PHONY : src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/clean

src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/depend:
	cd /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/containers/src /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/KOKKOS/lib/kokkos/containers/src/CMakeFiles/kokkoscontainers.dir/depend

