# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kitanohideaki/Documents/git/MasoWrite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kitanohideaki/Documents/git/MasoWrite/build

# Include any dependencies generated for this target.
include CMakeFiles/MasoWrite.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MasoWrite.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MasoWrite.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MasoWrite.dir/flags.make

CMakeFiles/MasoWrite.dir/codegen:
.PHONY : CMakeFiles/MasoWrite.dir/codegen

CMakeFiles/MasoWrite.dir/src/main.cpp.o: CMakeFiles/MasoWrite.dir/flags.make
CMakeFiles/MasoWrite.dir/src/main.cpp.o: /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp
CMakeFiles/MasoWrite.dir/src/main.cpp.o: CMakeFiles/MasoWrite.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MasoWrite.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MasoWrite.dir/src/main.cpp.o -MF CMakeFiles/MasoWrite.dir/src/main.cpp.o.d -o CMakeFiles/MasoWrite.dir/src/main.cpp.o -c /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp

CMakeFiles/MasoWrite.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MasoWrite.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp > CMakeFiles/MasoWrite.dir/src/main.cpp.i

CMakeFiles/MasoWrite.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MasoWrite.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp -o CMakeFiles/MasoWrite.dir/src/main.cpp.s

# Object files for target MasoWrite
MasoWrite_OBJECTS = \
"CMakeFiles/MasoWrite.dir/src/main.cpp.o"

# External object files for target MasoWrite
MasoWrite_EXTERNAL_OBJECTS =

MasoWrite: CMakeFiles/MasoWrite.dir/src/main.cpp.o
MasoWrite: CMakeFiles/MasoWrite.dir/build.make
MasoWrite: CMakeFiles/MasoWrite.dir/compiler_depend.ts
MasoWrite: /usr/lib/libcurses.so
MasoWrite: /usr/lib/libform.so
MasoWrite: CMakeFiles/MasoWrite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MasoWrite"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MasoWrite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MasoWrite.dir/build: MasoWrite
.PHONY : CMakeFiles/MasoWrite.dir/build

CMakeFiles/MasoWrite.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MasoWrite.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MasoWrite.dir/clean

CMakeFiles/MasoWrite.dir/depend:
	cd /home/kitanohideaki/Documents/git/MasoWrite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles/MasoWrite.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MasoWrite.dir/depend

