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
CMAKE_SOURCE_DIR = /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target

# Include any dependencies generated for this target.
include main/src/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include main/src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include main/src/CMakeFiles/main.dir/flags.make

main/src/CMakeFiles/main.dir/main.c.o: main/src/CMakeFiles/main.dir/flags.make
main/src/CMakeFiles/main.dir/main.c.o: ../main/src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object main/src/CMakeFiles/main.dir/main.c.o"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/main.c.o   -c /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/src/main.c

main/src/CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/src/main.c > CMakeFiles/main.dir/main.c.i

main/src/CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/src/main.c -o CMakeFiles/main.dir/main.c.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main/src/main: main/src/CMakeFiles/main.dir/main.c.o
main/src/main: main/src/CMakeFiles/main.dir/build.make
main/src/main: tree/src/libtree.a
main/src/main: main/src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable main"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
main/src/CMakeFiles/main.dir/build: main/src/main

.PHONY : main/src/CMakeFiles/main.dir/build

main/src/CMakeFiles/main.dir/clean:
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : main/src/CMakeFiles/main.dir/clean

main/src/CMakeFiles/main.dir/depend:
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/src /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : main/src/CMakeFiles/main.dir/depend

