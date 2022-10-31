cmake_minimum_required(VERSION 3.16)
project(xml_parser)

set(CMAKE_CXX_STANDARD 14)

add_executable(xml_parser main.cpp xml/Xml.cpp xml/Xml.h value/Value.cpp value/Value.h xml/Parser.cpp xml/Parser.h)