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
include CMakeFiles/vim_like_editor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/vim_like_editor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vim_like_editor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vim_like_editor.dir/flags.make

CMakeFiles/vim_like_editor.dir/codegen:
.PHONY : CMakeFiles/vim_like_editor.dir/codegen

CMakeFiles/vim_like_editor.dir/src/main.cpp.o: CMakeFiles/vim_like_editor.dir/flags.make
CMakeFiles/vim_like_editor.dir/src/main.cpp.o: /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp
CMakeFiles/vim_like_editor.dir/src/main.cpp.o: CMakeFiles/vim_like_editor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vim_like_editor.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vim_like_editor.dir/src/main.cpp.o -MF CMakeFiles/vim_like_editor.dir/src/main.cpp.o.d -o CMakeFiles/vim_like_editor.dir/src/main.cpp.o -c /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp

CMakeFiles/vim_like_editor.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/vim_like_editor.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp > CMakeFiles/vim_like_editor.dir/src/main.cpp.i

CMakeFiles/vim_like_editor.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/vim_like_editor.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kitanohideaki/Documents/git/MasoWrite/src/main.cpp -o CMakeFiles/vim_like_editor.dir/src/main.cpp.s

# Object files for target vim_like_editor
vim_like_editor_OBJECTS = \
"CMakeFiles/vim_like_editor.dir/src/main.cpp.o"

# External object files for target vim_like_editor
vim_like_editor_EXTERNAL_OBJECTS =

vim_like_editor: CMakeFiles/vim_like_editor.dir/src/main.cpp.o
vim_like_editor: CMakeFiles/vim_like_editor.dir/build.make
vim_like_editor: CMakeFiles/vim_like_editor.dir/compiler_depend.ts
vim_like_editor: /usr/lib/libcurses.so
vim_like_editor: /usr/lib/libform.so
vim_like_editor: CMakeFiles/vim_like_editor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vim_like_editor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vim_like_editor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vim_like_editor.dir/build: vim_like_editor
.PHONY : CMakeFiles/vim_like_editor.dir/build

CMakeFiles/vim_like_editor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vim_like_editor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vim_like_editor.dir/clean

CMakeFiles/vim_like_editor.dir/depend:
	cd /home/kitanohideaki/Documents/git/MasoWrite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build /home/kitanohideaki/Documents/git/MasoWrite/build/CMakeFiles/vim_like_editor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/vim_like_editor.dir/depend

