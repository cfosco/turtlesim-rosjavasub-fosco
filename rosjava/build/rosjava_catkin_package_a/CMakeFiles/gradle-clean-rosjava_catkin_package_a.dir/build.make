# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/camilo/rosjava/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camilo/rosjava/build

# Utility rule file for gradle-clean-rosjava_catkin_package_a.

# Include the progress variables for this target.
include rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/progress.make

rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/camilo/rosjava/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Cleaning gradle project for rosjava_catkin_package_a"
	cd /home/camilo/rosjava/src/rosjava_catkin_package_a && /home/camilo/rosjava/build/catkin_generated/env_cached.sh /home/camilo/rosjava/src/rosjava_catkin_package_a/gradlew clean

gradle-clean-rosjava_catkin_package_a: rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a
gradle-clean-rosjava_catkin_package_a: rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/build.make
.PHONY : gradle-clean-rosjava_catkin_package_a

# Rule to build all files generated by this target.
rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/build: gradle-clean-rosjava_catkin_package_a
.PHONY : rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/build

rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/clean:
	cd /home/camilo/rosjava/build/rosjava_catkin_package_a && $(CMAKE_COMMAND) -P CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/cmake_clean.cmake
.PHONY : rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/clean

rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/depend:
	cd /home/camilo/rosjava/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/rosjava/src /home/camilo/rosjava/src/rosjava_catkin_package_a /home/camilo/rosjava/build /home/camilo/rosjava/build/rosjava_catkin_package_a /home/camilo/rosjava/build/rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosjava_catkin_package_a/CMakeFiles/gradle-clean-rosjava_catkin_package_a.dir/depend

