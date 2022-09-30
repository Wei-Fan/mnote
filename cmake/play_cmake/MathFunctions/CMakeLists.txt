cmake_minimum_required(VERSION 3.10)
add_library(MathFunctions mysqrt.cxx)
target_include_directories(MathFunctions
            INTERFACE ${CMAKE_CURRENT_SOURCE_DIR} #anybody linking to MathFunctions library needs to include current source directory
            )