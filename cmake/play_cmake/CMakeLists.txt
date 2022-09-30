cmake_minimum_required(VERSION 3.10)

project(play_cmake VERSION 1.0) #project name and the version number can be read by play_cmake_VERSION_MAJOR & play_cmake_VERSION_MINOR

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

option(USE_MYMATH "use tutorial provided math implementation" ON)
configure_file(TutorialConfig.h.in TutorialConfig.h) #configure the .h.in file to a .h file, where all autoconf value(@...@) will be replaced

if(USE_MYMATH)
    add_subdirectory(MathFunctions) #run the CMakeLists.txt in subdirectory
    list(APPEND EXTRA_LIBS MathFunctions) #collect the MathFunctions library into EXTRA_LIBS
    # list(APPEND EXTRA_INCLUDES ${PROJECT_SOURCE_DIR}/MathFunctions) #collect the directory into EXTRA_INCLUDES
endif(USE_MYMATH)


add_executable(play tutorial.cxx) #add the executable
# target_link_libraries(play PUBLIC MathFunctions) #link a library that added to cmake library
target_link_libraries(play PUBLIC ${EXTRA_LIBS})
target_include_directories(play PUBLIC #supply directories to the compiler
                            ${PROJECT_BINARY_DIR} #the configured .h file will be written into binary tree
                            # ${PROJECT_SOURCE_DIR}/MathFunctions
                            # ${EXTRA_INCLUDES} #use INTERFACE in the library's CMakelist
                            )