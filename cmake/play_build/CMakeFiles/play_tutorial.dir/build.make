# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/mnote/cmake/play_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/mnote/cmake/play_build

# Include any dependencies generated for this target.
include CMakeFiles/play_tutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/play_tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/play_tutorial.dir/flags.make

CMakeFiles/play_tutorial.dir/tutorial.cxx.o: CMakeFiles/play_tutorial.dir/flags.make
CMakeFiles/play_tutorial.dir/tutorial.cxx.o: /home/ubuntu/mnote/cmake/play_cmake/tutorial.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/mnote/cmake/play_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/play_tutorial.dir/tutorial.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/play_tutorial.dir/tutorial.cxx.o -c /home/ubuntu/mnote/cmake/play_cmake/tutorial.cxx

CMakeFiles/play_tutorial.dir/tutorial.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/play_tutorial.dir/tutorial.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/mnote/cmake/play_cmake/tutorial.cxx > CMakeFiles/play_tutorial.dir/tutorial.cxx.i

CMakeFiles/play_tutorial.dir/tutorial.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/play_tutorial.dir/tutorial.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/mnote/cmake/play_cmake/tutorial.cxx -o CMakeFiles/play_tutorial.dir/tutorial.cxx.s

# Object files for target play_tutorial
play_tutorial_OBJECTS = \
"CMakeFiles/play_tutorial.dir/tutorial.cxx.o"

# External object files for target play_tutorial
play_tutorial_EXTERNAL_OBJECTS =

play_tutorial: CMakeFiles/play_tutorial.dir/tutorial.cxx.o
play_tutorial: CMakeFiles/play_tutorial.dir/build.make
play_tutorial: CMakeFiles/play_tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/mnote/cmake/play_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable play_tutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/play_tutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/play_tutorial.dir/build: play_tutorial

.PHONY : CMakeFiles/play_tutorial.dir/build

CMakeFiles/play_tutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/play_tutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/play_tutorial.dir/clean

CMakeFiles/play_tutorial.dir/depend:
	cd /home/ubuntu/mnote/cmake/play_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/mnote/cmake/play_cmake /home/ubuntu/mnote/cmake/play_cmake /home/ubuntu/mnote/cmake/play_build /home/ubuntu/mnote/cmake/play_build /home/ubuntu/mnote/cmake/play_build/CMakeFiles/play_tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/play_tutorial.dir/depend

