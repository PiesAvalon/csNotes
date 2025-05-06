# Cmake使用教程
## 作用
撰写`CMakeLists.txt`文件 -> 通过CMake生成项目的构建文件 -> 通过构建文件编译项目
## 安装
Win使用官网安装包安装，mac使用homebrew安装
```bash
brew install cmake
```
通过安装包需要将cmake添加到PATH
```bash
vim ~/.bash_profile
export PATH="/Applications/CMake.app/Contents/bin":"$PATH"
```
Linux通过包管理器安装...  
检查CMake版本
```bash
cmake --version
```
使用CMake图形化界面（需要单独安装）
```bash
cmake-gui
```
## 项目文件结构
以example_project为例
```
example_project/
├── CMakeLists.txt
├── main.cpp
├── build/
├── include/
│   └── Example.h
└── src/
    └── Example.cpp
```
把需要include的头文件放在一个文件夹下，最好把源文件放在一个文件夹下，创建一个叫build的文件夹
## 撰写CMakeList.txt文件
### 1.创建文件
在项目根目录下创建CMakes.txt文件
### 2.撰写内容
必写的内容：
- cmake_minimum_required
- project
- set -> c++版本
- imclude_directories -> 头文件放在一个目录里
- add_exacutable -> 可执行文件名 + 所有cpp源文件路径
- 链接库（不太懂）
```py
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
```
## 运行cmake编译文件
初始化cmake
```bash
cd build
cmake ..
```
以后每次make和运行
```bash
make
```
即可得到可执行文件
## C语言程序得到可执行文件的过程
预处理 -> 编译 -> 汇编 -> 链接  
一次性执行
```bash
gcc hello.c -o hello  # 直接生成可执行文件（隐含所有步骤）
```
分步执行
```bash
gcc -E hello.c -o hello.i # 生成预处理文件
gcc -S hello.i -o hello.s # 生成汇编语言代码
gcc -c hello.s -o hello.o # 生成二进制目标文件
gcc hello.o -o hello # 生成可执行文件
```