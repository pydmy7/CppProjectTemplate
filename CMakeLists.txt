cmake_minimum_required(VERSION 3.15)

project(CppProjectTemplate)

include(cmake/cmakeconfig.cmake)

add_subdirectory(3rdlibs)

add_subdirectory(cmake)

add_subdirectory(cppprojecttemplate)
