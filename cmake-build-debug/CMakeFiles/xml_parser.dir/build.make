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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bob/workspace/CPPProjects/xml-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/xml_parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/xml_parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xml_parser.dir/flags.make

CMakeFiles/xml_parser.dir/main.cpp.o: CMakeFiles/xml_parser.dir/flags.make
CMakeFiles/xml_parser.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/xml_parser.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xml_parser.dir/main.cpp.o -c /Users/bob/workspace/CPPProjects/xml-parser/main.cpp

CMakeFiles/xml_parser.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xml_parser.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bob/workspace/CPPProjects/xml-parser/main.cpp > CMakeFiles/xml_parser.dir/main.cpp.i

CMakeFiles/xml_parser.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xml_parser.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bob/workspace/CPPProjects/xml-parser/main.cpp -o CMakeFiles/xml_parser.dir/main.cpp.s

CMakeFiles/xml_parser.dir/xml/Xml.cpp.o: CMakeFiles/xml_parser.dir/flags.make
CMakeFiles/xml_parser.dir/xml/Xml.cpp.o: ../xml/Xml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/xml_parser.dir/xml/Xml.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xml_parser.dir/xml/Xml.cpp.o -c /Users/bob/workspace/CPPProjects/xml-parser/xml/Xml.cpp

CMakeFiles/xml_parser.dir/xml/Xml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xml_parser.dir/xml/Xml.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bob/workspace/CPPProjects/xml-parser/xml/Xml.cpp > CMakeFiles/xml_parser.dir/xml/Xml.cpp.i

CMakeFiles/xml_parser.dir/xml/Xml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xml_parser.dir/xml/Xml.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bob/workspace/CPPProjects/xml-parser/xml/Xml.cpp -o CMakeFiles/xml_parser.dir/xml/Xml.cpp.s

CMakeFiles/xml_parser.dir/value/Value.cpp.o: CMakeFiles/xml_parser.dir/flags.make
CMakeFiles/xml_parser.dir/value/Value.cpp.o: ../value/Value.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/xml_parser.dir/value/Value.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xml_parser.dir/value/Value.cpp.o -c /Users/bob/workspace/CPPProjects/xml-parser/value/Value.cpp

CMakeFiles/xml_parser.dir/value/Value.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xml_parser.dir/value/Value.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bob/workspace/CPPProjects/xml-parser/value/Value.cpp > CMakeFiles/xml_parser.dir/value/Value.cpp.i

CMakeFiles/xml_parser.dir/value/Value.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xml_parser.dir/value/Value.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bob/workspace/CPPProjects/xml-parser/value/Value.cpp -o CMakeFiles/xml_parser.dir/value/Value.cpp.s

CMakeFiles/xml_parser.dir/xml/Parser.cpp.o: CMakeFiles/xml_parser.dir/flags.make
CMakeFiles/xml_parser.dir/xml/Parser.cpp.o: ../xml/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/xml_parser.dir/xml/Parser.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xml_parser.dir/xml/Parser.cpp.o -c /Users/bob/workspace/CPPProjects/xml-parser/xml/Parser.cpp

CMakeFiles/xml_parser.dir/xml/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xml_parser.dir/xml/Parser.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bob/workspace/CPPProjects/xml-parser/xml/Parser.cpp > CMakeFiles/xml_parser.dir/xml/Parser.cpp.i

CMakeFiles/xml_parser.dir/xml/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xml_parser.dir/xml/Parser.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bob/workspace/CPPProjects/xml-parser/xml/Parser.cpp -o CMakeFiles/xml_parser.dir/xml/Parser.cpp.s

# Object files for target xml_parser
xml_parser_OBJECTS = \
"CMakeFiles/xml_parser.dir/main.cpp.o" \
"CMakeFiles/xml_parser.dir/xml/Xml.cpp.o" \
"CMakeFiles/xml_parser.dir/value/Value.cpp.o" \
"CMakeFiles/xml_parser.dir/xml/Parser.cpp.o"

# External object files for target xml_parser
xml_parser_EXTERNAL_OBJECTS =

xml_parser: CMakeFiles/xml_parser.dir/main.cpp.o
xml_parser: CMakeFiles/xml_parser.dir/xml/Xml.cpp.o
xml_parser: CMakeFiles/xml_parser.dir/value/Value.cpp.o
xml_parser: CMakeFiles/xml_parser.dir/xml/Parser.cpp.o
xml_parser: CMakeFiles/xml_parser.dir/build.make
xml_parser: CMakeFiles/xml_parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable xml_parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xml_parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xml_parser.dir/build: xml_parser

.PHONY : CMakeFiles/xml_parser.dir/build

CMakeFiles/xml_parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xml_parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xml_parser.dir/clean

CMakeFiles/xml_parser.dir/depend:
	cd /Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bob/workspace/CPPProjects/xml-parser /Users/bob/workspace/CPPProjects/xml-parser /Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug /Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug /Users/bob/workspace/CPPProjects/xml-parser/cmake-build-debug/CMakeFiles/xml_parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xml_parser.dir/depend

