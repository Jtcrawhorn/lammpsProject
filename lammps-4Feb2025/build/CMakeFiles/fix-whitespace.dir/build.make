# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build

# Utility rule file for fix-whitespace.

# Include any custom commands dependencies for this target.
include CMakeFiles/fix-whitespace.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fix-whitespace.dir/progress.make

CMakeFiles/fix-whitespace:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Fix whitespace errors"
	cd /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025 && /usr/bin/python3.12 /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/tools/coding_standard/whitespace.py -f .

fix-whitespace: CMakeFiles/fix-whitespace
fix-whitespace: CMakeFiles/fix-whitespace.dir/build.make
.PHONY : fix-whitespace

# Rule to build all files generated by this target.
CMakeFiles/fix-whitespace.dir/build: fix-whitespace
.PHONY : CMakeFiles/fix-whitespace.dir/build

CMakeFiles/fix-whitespace.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fix-whitespace.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fix-whitespace.dir/clean

CMakeFiles/fix-whitespace.dir/depend:
	cd /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/cmake /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/cmake /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build/CMakeFiles/fix-whitespace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fix-whitespace.dir/depend

