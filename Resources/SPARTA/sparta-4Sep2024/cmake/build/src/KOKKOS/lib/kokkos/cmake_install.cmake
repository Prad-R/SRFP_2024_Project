# Install script for directory: /home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/core/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/containers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/algorithms/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/simd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/example/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/benchmarks/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos" TYPE FILE FILES
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosConfig.cmake"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosConfigCommon.cmake"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos/KokkosTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos/KokkosTargets.cmake"
         "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/CMakeFiles/Export/lib/cmake/Kokkos/KokkosTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos/KokkosTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos/KokkosTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos" TYPE FILE FILES "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/CMakeFiles/Export/lib/cmake/Kokkos/KokkosTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Kokkos" TYPE FILE FILES "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/CMakeFiles/Export/lib/cmake/Kokkos/KokkosTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kokkos" TYPE FILE FILES "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosCore_config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/bin/nvcc_wrapper"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/lib/kokkos/bin/hpcbind"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/temp/kokkos_launch_compiler"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kokkos" TYPE FILE FILES
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosCore_config.h"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosCore_Config_FwdBackend.hpp"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosCore_Config_SetupBackend.hpp"
    "/home/prad/Desktop/IITM_Courses/Projects/SRFP_2024_Project/Resources/SPARTA/sparta-4Sep2024/cmake/build/src/KOKKOS/lib/kokkos/KokkosCore_Config_DeclareBackend.hpp"
    )
endif()

