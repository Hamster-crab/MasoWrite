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
include CMakeFiles/my_editor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_editor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_editor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_editor.dir/flags.make

CMakeFiles/my_editor.dir/codegen:
.PHONY : CMakeFiles/my_editor.dir/codegen

CMakeFiles/my_editor.dir/src/main.cpp.o: CMakeFiles/my_editor.dir/flags.make
CMakeFiles/my_editor.dir/src/main.cpp.o: /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp
CMakeFiles/my_editor.dir/src/main.cpp.o: CMakeFiles/my_editor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_editor.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_editor.dir/src/main.cpp.o -MF CMakeFiles/my_editor.dir/src/main.cpp.o.d -o CMakeFiles/my_editor.dir/src/main.cpp.o -c /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp

CMakeFiles/my_editor.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_editor.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp > CMakeFiles/my_editor.dir/src/main.cpp.i

CMakeFiles/my_editor.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_editor.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp -o CMakeFiles/my_editor.dir/src/main.cpp.s

# Object files for target my_editor
my_editor_OBJECTS = \
"CMakeFiles/my_editor.dir/src/main.cpp.o"

# External object files for target my_editor
my_editor_EXTERNAL_OBJECTS =

my_editor: CMakeFiles/my_editor.dir/src/main.cpp.o
my_editor: CMakeFiles/my_editor.dir/build.make
my_editor: CMakeFiles/my_editor.dir/compiler_depend.ts
my_editor: /usr/lib/libcurses.so
my_editor: /usr/lib/libform.so
my_editor: CMakeFiles/my_editor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_editor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_editor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_editor.dir/build: my_editor
.PHONY : CMakeFiles/my_editor.dir/build

CMakeFiles/my_editor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_editor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_editor.dir/clean

CMakeFiles/my_editor.dir/depend:
	cd /home/kitanohideaki/Documents/git/MasoWrite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles/my_editor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/my_editor.dir/depend

