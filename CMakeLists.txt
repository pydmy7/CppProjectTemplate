cmake_minimum_required(VERSION 3.15)

project(CppProjectTemplate)

if (myself)
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
endif()

add_subdirectory(cmake)
add_subdirectory(cppprojecttemplate)
