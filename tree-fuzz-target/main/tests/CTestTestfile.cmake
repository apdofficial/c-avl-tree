# CMake generated Testfile for 
# Source directory: /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests
# Build directory: /home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_main "/usr/bin/bash" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/test_main.sh" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src/main")
set_tests_properties(test_main PROPERTIES  WORKING_DIRECTORY "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests" _BACKTRACE_TRIPLES "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;2;add_test;/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;0;")
add_test(test_sorted "/usr/bin/bash" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/test_sorted.sh" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src/main")
set_tests_properties(test_sorted PROPERTIES  WORKING_DIRECTORY "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests" _BACKTRACE_TRIPLES "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;3;add_test;/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;0;")
add_test(test_balanced "/usr/bin/bash" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/test_balanced.sh" "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/tree-fuzz-target/main/src/main")
set_tests_properties(test_balanced PROPERTIES  WORKING_DIRECTORY "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests" _BACKTRACE_TRIPLES "/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;4;add_test;/home/yujie/CLionProjects/ss21-team-9-sorted-tree-c/main/tests/CMakeLists.txt;0;")
