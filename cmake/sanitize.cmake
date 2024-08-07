function(useSanitize target_name)
    isMSVCBackend(msvcbackend)
    isMinGWBackend(mingwbackend)
    isGNUBackend(gnubackend)
    if (${gnubackend} OR ${mingwbackend})
        target_compile_options(${target_name} PRIVATE -Wall -Wextra -Wpedantic)
    elseif(${msvcbackend})
        target_compile_options(${target_name} PRIVATE /W4 /analyze)
    endif()

    if (CMAKE_BUILD_TYPE STREQUAL "Sanitize")
        message("Sanitize enabled")

        if (${gnubackend} OR ${mingwbackend})
            target_compile_options(
                ${target_name}
                PRIVATE
                -fsanitize=address
                -fsanitize=thread
                -fsanitize=memory
                -fsanitize=undefined
            )
            target_link_options(
                ${target_name}
                PRIVATE
                -fsanitize=address
                -fsanitize=thread
                -fsanitize=memory
                -fsanitize=undefined
            )
        endif()

        if (${msvcbackend})
            target_compile_options(
                ${target_name}
                PRIVATE
                /fsanitize=address
                /fsanitize=thread
                /fsanitize=memory
                /fsanitize=undefined
            )
            target_link_options(
                ${target_name}
                PRIVATE
                /fsanitize=address
                /fsanitize=thread
                /fsanitize=memory
                /fsanitize=undefined
            )
        endif()
    endif()    
endfunction(useSanitize)
