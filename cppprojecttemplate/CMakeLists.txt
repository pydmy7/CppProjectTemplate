set(target cppprojecttemplate)

addExecutable(${target})
target_link_libraries(${target} PRIVATE Sanitizer::Address)
copyDll(${target})
