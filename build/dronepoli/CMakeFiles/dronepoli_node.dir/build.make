# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/nvidia/DronePoli/src/dronepoli

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/DronePoli/build/dronepoli

# Include any dependencies generated for this target.
include CMakeFiles/dronepoli_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dronepoli_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dronepoli_node.dir/flags.make

CMakeFiles/dronepoli_node.dir/src/controller.cpp.o: CMakeFiles/dronepoli_node.dir/flags.make
CMakeFiles/dronepoli_node.dir/src/controller.cpp.o: /home/nvidia/DronePoli/src/dronepoli/src/controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/DronePoli/build/dronepoli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dronepoli_node.dir/src/controller.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dronepoli_node.dir/src/controller.cpp.o -c /home/nvidia/DronePoli/src/dronepoli/src/controller.cpp

CMakeFiles/dronepoli_node.dir/src/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dronepoli_node.dir/src/controller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/DronePoli/src/dronepoli/src/controller.cpp > CMakeFiles/dronepoli_node.dir/src/controller.cpp.i

CMakeFiles/dronepoli_node.dir/src/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dronepoli_node.dir/src/controller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/DronePoli/src/dronepoli/src/controller.cpp -o CMakeFiles/dronepoli_node.dir/src/controller.cpp.s

CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.requires:

.PHONY : CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.requires

CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.provides: CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.requires
	$(MAKE) -f CMakeFiles/dronepoli_node.dir/build.make CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.provides.build
.PHONY : CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.provides

CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.provides.build: CMakeFiles/dronepoli_node.dir/src/controller.cpp.o


# Object files for target dronepoli_node
dronepoli_node_OBJECTS = \
"CMakeFiles/dronepoli_node.dir/src/controller.cpp.o"

# External object files for target dronepoli_node
dronepoli_node_EXTERNAL_OBJECTS =

/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: CMakeFiles/dronepoli_node.dir/src/controller.cpp.o
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: CMakeFiles/dronepoli_node.dir/build.make
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /home/nvidia/DronePoli/devel/.private/dronepoli/lib/libdronepoli.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libmavros.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libGeographic.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libdiagnostic_updater.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libeigen_conversions.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/liborocos-kdl.so.1.4.0
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libmavconn.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libclass_loader.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/libPocoFoundation.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libdl.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libroslib.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/librospack.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libtf2_ros.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libactionlib.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libtf2.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libroscpp.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/librosconsole.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/librostime.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /opt/ros/melodic/lib/libcpp_common.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node: CMakeFiles/dronepoli_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/DronePoli/build/dronepoli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dronepoli_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dronepoli_node.dir/build: /home/nvidia/DronePoli/devel/.private/dronepoli/lib/dronepoli/dronepoli_node

.PHONY : CMakeFiles/dronepoli_node.dir/build

CMakeFiles/dronepoli_node.dir/requires: CMakeFiles/dronepoli_node.dir/src/controller.cpp.o.requires

.PHONY : CMakeFiles/dronepoli_node.dir/requires

CMakeFiles/dronepoli_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dronepoli_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dronepoli_node.dir/clean

CMakeFiles/dronepoli_node.dir/depend:
	cd /home/nvidia/DronePoli/build/dronepoli && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/DronePoli/src/dronepoli /home/nvidia/DronePoli/src/dronepoli /home/nvidia/DronePoli/build/dronepoli /home/nvidia/DronePoli/build/dronepoli /home/nvidia/DronePoli/build/dronepoli/CMakeFiles/dronepoli_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dronepoli_node.dir/depend

