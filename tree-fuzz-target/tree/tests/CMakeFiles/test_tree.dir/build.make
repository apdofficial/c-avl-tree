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
include tree/tests/CMakeFiles/test_tree.dir/depend.make

# Include the progress variables for this target.
include tree/tests/CMakeFiles/test_tree.dir/progress.make

# Include the compile flags for this target's objects.
include tree/tests/CMakeFiles/test_tree.dir/flags.make

tree/tests/CMakeFiles/test_tree.dir/test_tree.c.o: tree/tests/CMakeFiles/test_tree.dir/flags.make
tree/tests/CMakeFiles/test_tree.dir/test_tree.c.o: ../tree/tests/test_tree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tree/tests/CMakeFiles/test_tree.dir/test_tree.c.o"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_tree.dir/test_tree.c.o   -c /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree/tests/test_tree.c

tree/tests/CMakeFiles/test_tree.dir/test_tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_tree.dir/test_tree.c.i"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree/tests/test_tree.c > CMakeFiles/test_tree.dir/test_tree.c.i

tree/tests/CMakeFiles/test_tree.dir/test_tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_tree.dir/test_tree.c.s"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests && /home/yujie/Documents/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree/tests/test_tree.c -o CMakeFiles/test_tree.dir/test_tree.c.s

# Object files for target test_tree
test_tree_OBJECTS = \
"CMakeFiles/test_tree.dir/test_tree.c.o"

# External object files for target test_tree
test_tree_EXTERNAL_OBJECTS =

tree/tests/test_tree: tree/tests/CMakeFiles/test_tree.dir/test_tree.c.o
tree/tests/test_tree: tree/tests/CMakeFiles/test_tree.dir/build.make
tree/tests/test_tree: tree/src/libtree.a
tree/tests/test_tree: tree/tests/CMakeFiles/test_tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_tree"
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tree/tests/CMakeFiles/test_tree.dir/build: tree/tests/test_tree

.PHONY : tree/tests/CMakeFiles/test_tree.dir/build

tree/tests/CMakeFiles/test_tree.dir/clean:
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_tree.dir/cmake_clean.cmake
.PHONY : tree/tests/CMakeFiles/test_tree.dir/clean

tree/tests/CMakeFiles/test_tree.dir/depend:
	cd /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree/tests /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/tree/tests/CMakeFiles/test_tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tree/tests/CMakeFiles/test_tree.dir/depend

