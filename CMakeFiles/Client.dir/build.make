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
CMAKE_SOURCE_DIR = /home/roman/git_workspace/Video_stream

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roman/git_workspace/Video_stream

# Include any dependencies generated for this target.
include CMakeFiles/Client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client.dir/flags.make

CMakeFiles/Client.dir/client.cpp.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/client.cpp.o: client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/git_workspace/Video_stream/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Client.dir/client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Client.dir/client.cpp.o -c /home/roman/git_workspace/Video_stream/client.cpp

CMakeFiles/Client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/git_workspace/Video_stream/client.cpp > CMakeFiles/Client.dir/client.cpp.i

CMakeFiles/Client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/git_workspace/Video_stream/client.cpp -o CMakeFiles/Client.dir/client.cpp.s

CMakeFiles/Client.dir/client.cpp.o.requires:

.PHONY : CMakeFiles/Client.dir/client.cpp.o.requires

CMakeFiles/Client.dir/client.cpp.o.provides: CMakeFiles/Client.dir/client.cpp.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/client.cpp.o.provides.build
.PHONY : CMakeFiles/Client.dir/client.cpp.o.provides

CMakeFiles/Client.dir/client.cpp.o.provides.build: CMakeFiles/Client.dir/client.cpp.o


# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/client.cpp.o"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

Client: CMakeFiles/Client.dir/client.cpp.o
Client: CMakeFiles/Client.dir/build.make
Client: /usr/local/lib/libopencv_gapi.so.4.1.2
Client: /usr/local/lib/libopencv_stitching.so.4.1.2
Client: /usr/local/lib/libopencv_aruco.so.4.1.2
Client: /usr/local/lib/libopencv_bgsegm.so.4.1.2
Client: /usr/local/lib/libopencv_bioinspired.so.4.1.2
Client: /usr/local/lib/libopencv_ccalib.so.4.1.2
Client: /usr/local/lib/libopencv_dnn_objdetect.so.4.1.2
Client: /usr/local/lib/libopencv_dnn_superres.so.4.1.2
Client: /usr/local/lib/libopencv_dpm.so.4.1.2
Client: /usr/local/lib/libopencv_face.so.4.1.2
Client: /usr/local/lib/libopencv_freetype.so.4.1.2
Client: /usr/local/lib/libopencv_fuzzy.so.4.1.2
Client: /usr/local/lib/libopencv_hfs.so.4.1.2
Client: /usr/local/lib/libopencv_img_hash.so.4.1.2
Client: /usr/local/lib/libopencv_line_descriptor.so.4.1.2
Client: /usr/local/lib/libopencv_quality.so.4.1.2
Client: /usr/local/lib/libopencv_reg.so.4.1.2
Client: /usr/local/lib/libopencv_rgbd.so.4.1.2
Client: /usr/local/lib/libopencv_saliency.so.4.1.2
Client: /usr/local/lib/libopencv_stereo.so.4.1.2
Client: /usr/local/lib/libopencv_structured_light.so.4.1.2
Client: /usr/local/lib/libopencv_superres.so.4.1.2
Client: /usr/local/lib/libopencv_surface_matching.so.4.1.2
Client: /usr/local/lib/libopencv_tracking.so.4.1.2
Client: /usr/local/lib/libopencv_videostab.so.4.1.2
Client: /usr/local/lib/libopencv_xfeatures2d.so.4.1.2
Client: /usr/local/lib/libopencv_xobjdetect.so.4.1.2
Client: /usr/local/lib/libopencv_xphoto.so.4.1.2
Client: /usr/local/lib/libopencv_shape.so.4.1.2
Client: /usr/local/lib/libopencv_highgui.so.4.1.2
Client: /usr/local/lib/libopencv_datasets.so.4.1.2
Client: /usr/local/lib/libopencv_plot.so.4.1.2
Client: /usr/local/lib/libopencv_text.so.4.1.2
Client: /usr/local/lib/libopencv_dnn.so.4.1.2
Client: /usr/local/lib/libopencv_ml.so.4.1.2
Client: /usr/local/lib/libopencv_phase_unwrapping.so.4.1.2
Client: /usr/local/lib/libopencv_optflow.so.4.1.2
Client: /usr/local/lib/libopencv_ximgproc.so.4.1.2
Client: /usr/local/lib/libopencv_video.so.4.1.2
Client: /usr/local/lib/libopencv_videoio.so.4.1.2
Client: /usr/local/lib/libopencv_imgcodecs.so.4.1.2
Client: /usr/local/lib/libopencv_objdetect.so.4.1.2
Client: /usr/local/lib/libopencv_calib3d.so.4.1.2
Client: /usr/local/lib/libopencv_features2d.so.4.1.2
Client: /usr/local/lib/libopencv_flann.so.4.1.2
Client: /usr/local/lib/libopencv_photo.so.4.1.2
Client: /usr/local/lib/libopencv_imgproc.so.4.1.2
Client: /usr/local/lib/libopencv_core.so.4.1.2
Client: CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/roman/git_workspace/Video_stream/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client.dir/build: Client

.PHONY : CMakeFiles/Client.dir/build

CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/client.cpp.o.requires

.PHONY : CMakeFiles/Client.dir/requires

CMakeFiles/Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Client.dir/clean

CMakeFiles/Client.dir/depend:
	cd /home/roman/git_workspace/Video_stream && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roman/git_workspace/Video_stream /home/roman/git_workspace/Video_stream /home/roman/git_workspace/Video_stream /home/roman/git_workspace/Video_stream /home/roman/git_workspace/Video_stream/CMakeFiles/Client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Client.dir/depend

