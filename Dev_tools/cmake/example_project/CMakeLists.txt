# 最低 CMake 版本要求
cmake_minimum_required(VERSION 3.10)

# 项目名称和语言（C++）
project(Example_Project LANGUAGES CXX)

# 设置 C++ 标准（如 C++17）
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加头文件目录
include_directories(include)

# 添加源文件（可手动列出或用通配符）
add_executable(Example_Project
    src/Example.cpp
    main.cpp
)

# 链接库（如需链接外部库，如 OpenCV）
# target_link_libraries(my_app PRIVATE opencv_core)