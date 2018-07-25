cmake_minimum_required(VERSION 3.5)
project(Asuna)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

link_directories(/usr/lib /usr/local/lib)

find_package(Eigen REQUIRED)
include_directories(${Eigen_INCLUDE_DIRS})

FIND_PACKAGE(Protobuf 3.6.0 REQUIRED)
MESSAGE(STATUS "Using protobuf ${Protobuf_VERSION}")

find_package(TensorFlow REQUIRED)
include_directories(${TensorFlow_INCLUDE_DIRS})

add_executable(Asuna main.cc)
target_link_libraries(Asuna tensorflow_cc tensorflow_framework ${Protobuf_LIBRARIES})
