cmake_minimum_required(VERSION 3.12)
project(LLVMInstrumentFunction)


# # 设置 LLVM 路径
# set(LLVM_DIR "/home/feng/llvm-compiled-tools/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/lib/cmake/llvm")

# 寻找 LLVM 软件包
find_package(LLVM 15 REQUIRED CONFIG)
# find_package(LLVM 5 REQUIRED CONFIG)

# 输出 LLVM 版本信息
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")


# 添加 LLVM 头文件路径
include_directories(${LLVM_INCLUDE_DIRS})

# 输出 LLVM 头文件路径
message(STATUS "LLVM include directories: ${LLVM_INCLUDE_DIRS}")


# 将 LLVM 定义添加到编译器选项中
add_definitions(${LLVM_DEFINITIONS})

# 输出 LLVM 定义
message(STATUS "LLVM definitions: ${LLVM_DEFINITIONS}")


# 添加源文件
# add_library(InstrumentFunctionsPass MODULE instrument_functions.cpp)
add_library(InstrumentFunctionsPass SHARED instrument_functions.cpp)
