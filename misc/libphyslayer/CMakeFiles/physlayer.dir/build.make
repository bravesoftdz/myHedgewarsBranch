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
CMAKE_SOURCE_DIR = /home/tomek/hg/hedgewars/myHedgewarsBranch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tomek/hg/hedgewars/myHedgewarsBranch

# Include any dependencies generated for this target.
include misc/libphyslayer/CMakeFiles/physlayer.dir/depend.make

# Include the progress variables for this target.
include misc/libphyslayer/CMakeFiles/physlayer.dir/progress.make

# Include the compile flags for this target's objects.
include misc/libphyslayer/CMakeFiles/physlayer.dir/flags.make

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o: misc/libphyslayer/CMakeFiles/physlayer.dir/flags.make
misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o: misc/libphyslayer/physfscompat.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/physlayer.dir/physfscompat.c.o   -c /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfscompat.c

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physlayer.dir/physfscompat.c.i"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfscompat.c > CMakeFiles/physlayer.dir/physfscompat.c.i

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physlayer.dir/physfscompat.c.s"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfscompat.c -o CMakeFiles/physlayer.dir/physfscompat.c.s

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.requires:
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.requires

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.provides: misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.requires
	$(MAKE) -f misc/libphyslayer/CMakeFiles/physlayer.dir/build.make misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.provides.build
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.provides

misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.provides.build: misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o: misc/libphyslayer/CMakeFiles/physlayer.dir/flags.make
misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o: misc/libphyslayer/physfsrwops.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/physlayer.dir/physfsrwops.c.o   -c /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfsrwops.c

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physlayer.dir/physfsrwops.c.i"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfsrwops.c > CMakeFiles/physlayer.dir/physfsrwops.c.i

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physlayer.dir/physfsrwops.c.s"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfsrwops.c -o CMakeFiles/physlayer.dir/physfsrwops.c.s

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.requires:
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.requires

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.provides: misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.requires
	$(MAKE) -f misc/libphyslayer/CMakeFiles/physlayer.dir/build.make misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.provides.build
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.provides

misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.provides.build: misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o: misc/libphyslayer/CMakeFiles/physlayer.dir/flags.make
misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o: misc/libphyslayer/physfslualoader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/physlayer.dir/physfslualoader.c.o   -c /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfslualoader.c

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physlayer.dir/physfslualoader.c.i"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfslualoader.c > CMakeFiles/physlayer.dir/physfslualoader.c.i

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physlayer.dir/physfslualoader.c.s"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/physfslualoader.c -o CMakeFiles/physlayer.dir/physfslualoader.c.s

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.requires:
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.requires

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.provides: misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.requires
	$(MAKE) -f misc/libphyslayer/CMakeFiles/physlayer.dir/build.make misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.provides.build
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.provides

misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.provides.build: misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o: misc/libphyslayer/CMakeFiles/physlayer.dir/flags.make
misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o: misc/libphyslayer/hwpacksmounter.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tomek/hg/hedgewars/myHedgewarsBranch/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/physlayer.dir/hwpacksmounter.c.o   -c /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/hwpacksmounter.c

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physlayer.dir/hwpacksmounter.c.i"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/hwpacksmounter.c > CMakeFiles/physlayer.dir/hwpacksmounter.c.i

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physlayer.dir/hwpacksmounter.c.s"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/hwpacksmounter.c -o CMakeFiles/physlayer.dir/hwpacksmounter.c.s

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.requires:
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.requires

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.provides: misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.requires
	$(MAKE) -f misc/libphyslayer/CMakeFiles/physlayer.dir/build.make misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.provides.build
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.provides

misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.provides.build: misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o

# Object files for target physlayer
physlayer_OBJECTS = \
"CMakeFiles/physlayer.dir/physfscompat.c.o" \
"CMakeFiles/physlayer.dir/physfsrwops.c.o" \
"CMakeFiles/physlayer.dir/physfslualoader.c.o" \
"CMakeFiles/physlayer.dir/hwpacksmounter.c.o"

# External object files for target physlayer
physlayer_EXTERNAL_OBJECTS =

bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o
bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o
bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o
bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o
bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/build.make
bin/libphyslayer.so: /usr/lib/i386-linux-gnu/libSDL2main.a
bin/libphyslayer.so: /usr/lib/i386-linux-gnu/libSDL2.so
bin/libphyslayer.so: /usr/lib/i386-linux-gnu/liblua5.1.so
bin/libphyslayer.so: /usr/lib/libphysfs.so
bin/libphyslayer.so: misc/libphyslayer/CMakeFiles/physlayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../bin/libphyslayer.so"
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/physlayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
misc/libphyslayer/CMakeFiles/physlayer.dir/build: bin/libphyslayer.so
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/build

misc/libphyslayer/CMakeFiles/physlayer.dir/requires: misc/libphyslayer/CMakeFiles/physlayer.dir/physfscompat.c.o.requires
misc/libphyslayer/CMakeFiles/physlayer.dir/requires: misc/libphyslayer/CMakeFiles/physlayer.dir/physfsrwops.c.o.requires
misc/libphyslayer/CMakeFiles/physlayer.dir/requires: misc/libphyslayer/CMakeFiles/physlayer.dir/physfslualoader.c.o.requires
misc/libphyslayer/CMakeFiles/physlayer.dir/requires: misc/libphyslayer/CMakeFiles/physlayer.dir/hwpacksmounter.c.o.requires
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/requires

misc/libphyslayer/CMakeFiles/physlayer.dir/clean:
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer && $(CMAKE_COMMAND) -P CMakeFiles/physlayer.dir/cmake_clean.cmake
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/clean

misc/libphyslayer/CMakeFiles/physlayer.dir/depend:
	cd /home/tomek/hg/hedgewars/myHedgewarsBranch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tomek/hg/hedgewars/myHedgewarsBranch /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer /home/tomek/hg/hedgewars/myHedgewarsBranch /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer /home/tomek/hg/hedgewars/myHedgewarsBranch/misc/libphyslayer/CMakeFiles/physlayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : misc/libphyslayer/CMakeFiles/physlayer.dir/depend

