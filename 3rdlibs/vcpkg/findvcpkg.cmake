if (DEFINED ENV{VCPKG_ROOT})
    set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
    message("CMAKE_TOOLCHAIN_FILE == ${CMAKE_TOOLCHAIN_FILE}")
else()
    message(FATAL_ERROR "VCPKG_ROOT is not defined")
    message("Usage: -D CMAKE_TOOLCHAIN_FILE=<you vcpkg root dir>/scripts/buildsystems/vcpkg.cmake")
endif()