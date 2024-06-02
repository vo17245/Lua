## What is this ?

build lua 
- with cmake 
- in cpp compiler

## How to use in my project?

1. Create a directory named "Dependencies" (or any name you prefer) in your project.
2. Copy this project into the directory you created.
3. Delete the `.git` folder from the copied project to avoid any conflicts with your own version control.


4. In your project's CMakeLists.txt file, add the following: 

```cmake
add_subdirectory("Dependencies/Lua")
target_link_libraries(your_target PRIVATE Lua)
```
5. Have fun!

## Just build a shared library

If you don't use CMake, you can build a shared library by running the following command:
> ./build.bat

## Lua Version

lua 5.4