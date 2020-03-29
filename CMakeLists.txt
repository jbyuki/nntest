cmake_minimum_required(VERSION 3.1)
set(CMAKE_CXX_STANDARD 14)
project(nntest)

add_executable(xor xor.cpp)
add_executable(netgen netgen.cpp)
