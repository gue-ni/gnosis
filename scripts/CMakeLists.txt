# A simple Cmake example
# Usage:
# > mkdkir build
# > cd build
# > cmake ..
# > cmake --build .

cmake_minimum_required(VERSION 3.1)

project(hello C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 20)

add_executable(hello hello.c)