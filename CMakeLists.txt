cmake_minimum_required(VERSION 3.0)
project( Video_stream )
find_package( OpenCV REQUIRED )
add_executable ( Server server.cpp )
target_link_libraries( Server ${OpenCV_LIBS})

FIND_PACKAGE(Threads)
SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-std=c++11 -pthread")