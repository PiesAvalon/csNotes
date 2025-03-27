 // MyQueue.h
 #include<iostream>
 #include "MyStack.h"
 class MyQueue {
 private:
     // 用上一关OJ实现的MyStack类来实现MyQueue类
     // 请思考，如何维护两个栈结构，以满足队列结构的要求？
     // 我们帮你引用了头文件“MyStack100.h”，这份头文件中含有MyStack类的满分实现，你可以放心使用
     MyStack s1,s2;
 public:
     MyQueue();  // 构造函数
     void push(char c); // 元素从队尾入队
     char pop();        // 队首元素出队，返回出队的元素（我们没有定义空队列pop操作，测试用例中不会涉及）
     int size();        // 返回队列的大小
     // 请注意，以上函数的函数体请你在MyQueue.cpp中实现！
 };