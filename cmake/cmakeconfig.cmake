set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set(CMAKE_C_COMPILER "cl")
# set(CMAKE_CXX_COMPILER "cl")

set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")

set(CMAKE_BUILD_TYPE Debug)
# set(CMAKE_BUILD_TYPE Release)
# set(CMAKE_BUILD_TYPE Sanitize)
# 还没解决，Windows下暂时手动copy"clang_rt.asan_dynamic-x86_64.dll"这个库吧


message("CMAKE_BUILD_TYPE == ${CMAKE_BUILD_TYPE}")
