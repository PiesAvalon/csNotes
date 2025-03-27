部分知识回顾
1.RETURN_TYPE(*fp)(ARGLIST...);这样一条语句，就定义了一个指针类型的变量fp，它可以指向返回值类型是RETURN_TYPE并且参数列表是ARGLIST...的所有函数
2.string是一个字符串类，你可以将它看成一个字符串
3.vector是一个容器类，你可以理解它是一个数组，vector<int> a定义了一个装载int的容器，你可以通过a.push_back((int) b)来向a的末尾添加一个元素b。

任务描述
日常生活中对于命令的处理随处可见(比如你在打游戏被坑时输出在公屏上的脏话会被打上*),现在需要你实现一个命令处理类GameEngine。
scene_desc是一个以\0结尾的字符串，processors里的每一个元素都是一个处理器(处理器的职责是处理命令)，strategyGenerators里的每一个元素都是一个生成器(生成器的职责是生成处理器)，activeProcessors里保存所有存在的处理器(生成器所生成的处理器也算),你首先需要实现该类的以下函数
1.GameEngine(const char* desc)，构造函数，初始化scene_desc
2.GameEngine(const GameEngine& other),拷贝构造函数
3.~GameEngine()，析构函数
4.void addProcessor(bool (*func)(string& s)),添加一个处理器
5.void addStrategyGenerator(StrategyGenerator gen),添加一个生成器
6.bool processCommand(string& command),通过所有处理器处理命令command(处理器的先后顺序不做考虑)，若处理成功返回true,若处理失败则不要改变command并且返回false(再三注意此条件)。请注意生成器也会通过command命令生成处理器。
7.const char* getSceneDesc() const,返回scene_desc
8.GameEngine createBackup() const,拷贝一份当前对象的副本，并在原对象的scene_desc字符串前加入字符串BACKUP:作为副本的scene_desc并返回该副本。
除此之外，你还需要实现两个处理器：
1.bool formatStandardize(string& cmd),对命令cmd做预处理，具体来说，你应该将cmd中的所有大写英文字符转化为小写并压缩空格(将多个空格压缩为一个)(比如你应将aBccD    FFg    转化为abccd ffg ),转化成功返回true，否则返回false.
2.bool removeCodes(string& s),如果s中有两个#,删除#和其中间的字符。如果s中只有一个#,删除#及其后面的所有字符。保证最多只有两个#(你应该已经注意到了s是引用类型，所以你得修改s)。

注意
1.你可以使用任何STL库(尤其鼓励大家使用并熟练使用string库)
2.你可以自定义任何函数或变量，但请不要修改任何框架代码
3.当然，你也要注意课上学习的关于拷贝构造函数的坑

本地调试与测试样例
如果你需要在本地调试，那么你可能需要加上以下文件(这里仅供示例，实际评测函数并不完全一致)。

#include "GameEngine.h"
#include <iostream>
using namespace std;
int main(){
    GameEngine engine;
    engine.addProcessor(removeCodes);
    engine.addProcessor(formatStandardize);
    
    string cmd1 = "NJU#nju#Nju";
    string cmd2 = "Never   GiVe uP";
    string cmd3 = "Time#Flies"
    bool result1 = engine.processCommand(cmd1);
    bool result2 = engine.processCommand(cmd2);
    bool result3 = engine.processCommand(cmd3);
    
    cout<<cmd1<<endl<<cmd2<<endl<<cmd3<<endl;
    cout<<result1<<endl<<result2<<endl<<result3<<endl;
    return 0;
}
输出：

njunju
never give up
time
1
1
1