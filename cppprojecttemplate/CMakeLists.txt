set(target cppprojecttemplate)

addExecutable(${target})
target_link_libraries(${target} PRIVATE spdlog::spdlog)

configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/config.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/config.h"
)
target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
