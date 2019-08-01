macro(enable_pascal CMAKE_CONFIG_DIR PASCAL_MODULES_DIR)
    if(NOT CMAKE_Pascal_COMPILER_WORKS)  # may be set already if this list isn't top-level
        if("$ENV{CMAKE_Pascal_COMPILER}" STREQUAL "" AND "${CMAKE_Pascal_COMPILER}" STREQUAL "")
            if(${APPLE})
                set(CMAKE_Pascal_COMPILER "/usr/local/bin/fpc" CACHE STRING "" FORCE)
            elseif(${UNIX})
                set(CMAKE_Pascal_COMPILER "/usr/bin/fpc" CACHE STRING "" FORCE)
            elseif(${WIN32})
                # let the module show the user an error
            endif()
        endif()
        if("$ENV{CMAKE_Pascal_COMPILER_ENV_VAR}" STREQUAL "" AND "${CMAKE_Pascal_COMPILER_ENV_VAR}" STREQUAL "")
            set(CMAKE_Pascal_COMPILER_ENV_VAR fpc CACHE STRING "" FORCE)
        endif()

        set(CMAKE_CONFIG_DIR "${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/${CMAKE_VERSION}")
        set(PASCAL_MODULES_DIR "${CMAKE_CURRENT_LIST_DIR}/src/Week17/pascal_programs/cmake/radioutils")

        include("${PASCAL_MODULES_DIR}/CMakeDeterminePascalCompiler.cmake")
        include("${PASCAL_MODULES_DIR}/CMakePascalInformation.cmake")
        configure_file("${PASCAL_MODULES_DIR}/CMakePascalCompiler.cmake.in" "${CMAKE_CONFIG_DIR}/CMakePascalCompiler.cmake")

        enable_language(Pascal)

        list(APPEND CMAKE_MODULE_PATH  "${PASCAL_MODULES_DIR}")
        set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" CACHE INTERNAL "" FORCE)
        include("${PASCAL_MODULES_DIR}/CMakeTestPascalCompiler.cmake")
    endif()
endmacro(enable_pascal)
