# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/tomek/hg/hedgewars/myHedgewarsBranch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tomek/hg/hedgewars/myHedgewarsBranch

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip
.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package
.PHONY : package/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack --config ./CPackSourceConfig.cmake /home/tomek/hg/hedgewars/myHedgewarsBranch/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source
.PHONY : package_source/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test_normal

# Build rule for target.
test_normal: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_normal
.PHONY : test_normal

# fast build rule for target.
test_normal/fast:
	$(MAKE) -f CMakeFiles/test_normal.dir/build.make CMakeFiles/test_normal.dir/build
.PHONY : test_normal/fast

#=============================================================================
# Target rules for targets named test_verbose

# Build rule for target.
test_verbose: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_verbose
.PHONY : test_verbose

# fast build rule for target.
test_verbose/fast:
	$(MAKE) -f CMakeFiles/test_verbose.dir/build.make CMakeFiles/test_verbose.dir/build
.PHONY : test_verbose/fast

#=============================================================================
# Target rules for targets named physlayer

# Build rule for target.
physlayer: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 physlayer
.PHONY : physlayer

# fast build rule for target.
physlayer/fast:
	$(MAKE) -f misc/libphyslayer/CMakeFiles/physlayer.dir/build.make misc/libphyslayer/CMakeFiles/physlayer.dir/build
.PHONY : physlayer/fast

#=============================================================================
# Target rules for targets named hwengine

# Build rule for target.
hwengine: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 hwengine
.PHONY : hwengine

# fast build rule for target.
hwengine/fast:
	$(MAKE) -f hedgewars/CMakeFiles/hwengine.dir/build.make hedgewars/CMakeFiles/hwengine.dir/build
.PHONY : hwengine/fast

#=============================================================================
# Target rules for targets named hedgewars

# Build rule for target.
hedgewars: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 hedgewars
.PHONY : hedgewars

# fast build rule for target.
hedgewars/fast:
	$(MAKE) -f QTfrontend/CMakeFiles/hedgewars.dir/build.make QTfrontend/CMakeFiles/hedgewars.dir/build
.PHONY : hedgewars/fast

#=============================================================================
# Target rules for targets named release-translation

# Build rule for target.
release-translation: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 release-translation
.PHONY : release-translation

# fast build rule for target.
release-translation/fast:
	$(MAKE) -f share/hedgewars/Data/Locale/CMakeFiles/release-translation.dir/build.make share/hedgewars/Data/Locale/CMakeFiles/release-translation.dir/build
.PHONY : release-translation/fast

#=============================================================================
# Target rules for targets named uninstall

# Build rule for target.
uninstall: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 uninstall
.PHONY : uninstall

# fast build rule for target.
uninstall/fast:
	$(MAKE) -f tools/CMakeFiles/uninstall.dir/build.make tools/CMakeFiles/uninstall.dir/build
.PHONY : uninstall/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... package"
	@echo "... package_source"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... test_normal"
	@echo "... test_verbose"
	@echo "... physlayer"
	@echo "... hwengine"
	@echo "... hedgewars"
	@echo "... release-translation"
	@echo "... uninstall"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
