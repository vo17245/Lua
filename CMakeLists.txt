cmake_minimum_required(VERSION 3.10)
project(Lua)
set(CMAKE_CXX_STANDARD 20)
# Set IDE Directory Structure
if (MSVC)
	add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
	add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
endif()


file(GLOB_RECURSE FILES
"${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" 
"${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
)
add_library(Lua SHARED ${FILES})
target_include_directories(Lua PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")
    