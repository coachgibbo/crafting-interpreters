# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/coachgibbo/crafting-interpreters/C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/coachgibbo/crafting-interpreters/C/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/C.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/C.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/C.dir/flags.make

CMakeFiles/C.dir/library.c.o: CMakeFiles/C.dir/flags.make
CMakeFiles/C.dir/library.c.o: /home/coachgibbo/crafting-interpreters/C/library.c
CMakeFiles/C.dir/library.c.o: CMakeFiles/C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/coachgibbo/crafting-interpreters/C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/C.dir/library.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C.dir/library.c.o -MF CMakeFiles/C.dir/library.c.o.d -o CMakeFiles/C.dir/library.c.o -c /home/coachgibbo/crafting-interpreters/C/library.c

CMakeFiles/C.dir/library.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/C.dir/library.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coachgibbo/crafting-interpreters/C/library.c > CMakeFiles/C.dir/library.c.i

CMakeFiles/C.dir/library.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/C.dir/library.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coachgibbo/crafting-interpreters/C/library.c -o CMakeFiles/C.dir/library.c.s

CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o: CMakeFiles/C.dir/flags.make
CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o: /home/coachgibbo/crafting-interpreters/C/challenges/chapter1/doubly-linked-list.c
CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o: CMakeFiles/C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/coachgibbo/crafting-interpreters/C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o -MF CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o.d -o CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o -c /home/coachgibbo/crafting-interpreters/C/challenges/chapter1/doubly-linked-list.c

CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coachgibbo/crafting-interpreters/C/challenges/chapter1/doubly-linked-list.c > CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.i

CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coachgibbo/crafting-interpreters/C/challenges/chapter1/doubly-linked-list.c -o CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.s

# Object files for target C
C_OBJECTS = \
"CMakeFiles/C.dir/library.c.o" \
"CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o"

# External object files for target C
C_EXTERNAL_OBJECTS =

C : CMakeFiles/C.dir/library.c.o
C : CMakeFiles/C.dir/challenges/chapter1/doubly-linked-list.c.o
C : CMakeFiles/C.dir/build.make
C : CMakeFiles/C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/coachgibbo/crafting-interpreters/C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable C"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/C.dir/build: C
.PHONY : CMakeFiles/C.dir/build

CMakeFiles/C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/C.dir/clean

CMakeFiles/C.dir/depend:
	cd /home/coachgibbo/crafting-interpreters/C/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/coachgibbo/crafting-interpreters/C /home/coachgibbo/crafting-interpreters/C /home/coachgibbo/crafting-interpreters/C/cmake-build-debug /home/coachgibbo/crafting-interpreters/C/cmake-build-debug /home/coachgibbo/crafting-interpreters/C/cmake-build-debug/CMakeFiles/C.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/C.dir/depend

