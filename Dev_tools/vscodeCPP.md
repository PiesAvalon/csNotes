# VScode配置C++开发环境（含使用cmake）
## 1.前置知识-launch.json和tasks.json
tasks.json和launch.json是用来配置vscode的两个配置文件，它们存储在项目根目录.vscode下，被code自动识别。tasks本质上是配置好一些在shell中执行的命令，配置好之后可以通过code的图形化界面执行。launch本质上是配置用一个本地的调试器（gdb）启动对一个编译好的.exe文件的调试，并用code的界面和这个调试进程交互（自动print变量，按钮step in...），配置好之后可以在图形化界面进行调试。

用vscode写C++项目离不开便捷的调试功能，因而需要配置这两个文件。
## 2.使用VScode调试C++项目
先安装VScode的C/C++语言插件，在extensions中找到。
### 配置task（编译）
要编译一个项目需要运行g++命令，如
```bash
g++ --std=c++20 -o test.exe test.cpp
```
可以用task.json来配置这条命令。在项目根目录下创建/.vscode/tasks.json，编辑该文件内容
```json
//task.json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build cpp (g++)",
            "type": "shell",
            "command": "g++",
            "args": [
                "-g",
                "-std=c++20",
                "${file}",
                "-o",
                "${fileBasenameNoExtension}"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "problemMatcher": [
                "$gcc"
            ],
            "detail": "Compile current C++ file with g++ using C++20 standard and debug info"
        }
    ]
}
```
task文件实质上就是一条命令的模板，最好的方式就是让AI完成这个文件的撰写，可以使用这样的提示词：
> 帮我编写一个.task文件，用g++编译代码，用C++20，用-g标识以便调试

如果有多个文件需要编译，需要对args进行一些修改，如果g++没有添加到PATH，则需要对command进行一些改动，总之应先写出可以运行的命令再用AI生成这个文件

检测task配置是否成功：terminal菜单->Run Build Task（ctrl+shift+B）如果编译命令运行，就说明配置成功了
### 配置launch（调试）
在项目根目录创建/.vscode/launch.json，编辑launch.json配置文件，参考如下
```json
//launch.json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Debug C++ (gdb)",
            "type": "cppdbg",
            "request": "launch",
            "program": "${fileDirname}/${fileBasenameNoExtension}",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "externalConsole": false,
            "MIMode": "gdb",
            "miDebuggerPath": "gdb",
            "setupCommands": [
                {
                    "description": "Enable pretty-printing for gdb",
                    "text": "-enable-pretty-printing",
                    "ignoreFailures": true
                }
            ],
            "preLaunchTask": "build cpp (g++)"
        }
    ]
}
```
这个配置是让code可以借助本地调试器图形化调试项目，可以用AI生成这个文件，注意要让AI看见task.json文件，因为进行一键调试的时候会先进行编译，再启动调试器。合适的提示词可以是这样的
> @tasks.json 参考task文件的编译命令，撰写一个用gdb启动调试的launch.json文件

检测launch配置是否成功：回到代码中->手动打断点->按右上角启动按钮下拉菜单（如果没有检查是否安装C++插件并重启code）->选择Debug C/C++ File->选择Debug C++(gdb)（这里对应launch中的name）
## 3.使用VScode调试cmake项目
首先在电脑上安装cmake并安装code的cmake插件
### 配置cmake项目
ctrl+shift+P->Cmake: Quick Start按需求选择，插件会自动生成makefile文件和build文件夹
### 配置task和launch
在task.json中配置build命令，在launch.json中配置调试任务，参考如下。
```json
//task.json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build",
            "type": "shell",
            "command": "cmake",
            "args": [
                "--build",
                "${workspaceFolder}/build",
                "--config",
                "Debug"
            ],
            "options": {
                "cwd": "${workspaceFolder}"
            },
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "problemMatcher": [
                "$msCompile"
            ],
            "detail": "Build the project using CMake"
        }
    ]
}
```
```json
//launch.json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Debug test.exe",
            "type": "cppvsdbg",
            "request": "launch",
            "program": "${workspaceFolder}/build/Debug/test.exe",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "console": "externalTerminal",
            "preLaunchTask": "build"
        }
    ]
}
```
这两个问题可以使用AI生成，可以参考以下提示词
> @CMakeLists.txt 帮我撰写launch和task文件，task中执行build，launch中启动调试

另外，可以将cmake的make命令也配置在task里，使得每次执行build前先执行make。若使用了VScode的cmake插件，也可以直接点击下方任务栏的build按钮进行编译。