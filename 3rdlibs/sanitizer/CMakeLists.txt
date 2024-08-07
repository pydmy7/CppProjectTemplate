add_library(Sanitizer::Address SHARED IMPORTED GLOBAL)
set_target_properties(
    Sanitizer::Address
    PROPERTIES

    IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/bin/clang_rt.asan_dynamic-x86_64.dll"
    IMPORTED_IMPLIB "${CMAKE_CURRENT_SOURCE_DIR}/lib/clang_rt.asan_dynamic-x86_64.lib"
)
