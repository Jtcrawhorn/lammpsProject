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

# Utility rule file for fmt_core.h.

# Include any custom commands dependencies for this target.
include CMakeFiles/fmt_core.h.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fmt_core.h.dir/progress.make

CMakeFiles/fmt_core.h: includes/lammps/fmt/core.h

includes/lammps/fmt/core.h: /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/src/fmt/core.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating includes/lammps/fmt/core.h"
	/usr/bin/cmake -E copy_if_different /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/src/fmt/core.h /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build/includes/lammps/fmt/core.h

fmt_core.h: CMakeFiles/fmt_core.h
fmt_core.h: includes/lammps/fmt/core.h
fmt_core.h: CMakeFiles/fmt_core.h.dir/build.make
.PHONY : fmt_core.h

# Rule to build all files generated by this target.
CMakeFiles/fmt_core.h.dir/build: fmt_core.h
.PHONY : CMakeFiles/fmt_core.h.dir/build

CMakeFiles/fmt_core.h.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fmt_core.h.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fmt_core.h.dir/clean

CMakeFiles/fmt_core.h.dir/depend:
	cd /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/cmake /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/cmake /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build /nfs/home/crawhojt/cs470/lammpsProject/lammps-4Feb2025/build/CMakeFiles/fmt_core.h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fmt_core.h.dir/depend

