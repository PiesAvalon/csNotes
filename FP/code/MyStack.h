// MyStack.h
#include<iostream>

class MyStack {
    // 用链表实现“栈”
private:
    struct Node
	{ 
        char content;
		Node *next;
	} *top;
    int sz;//链表长度

public:
	MyStack();  // 构造函数
    ~MyStack(); // 析构函数
	void push(char c);  // 字符c入栈
	char pop();         // 栈顶元素出栈，返回出栈元素（我们没有定义空栈pop操作，测试用例中不会涉及）
    int size();         // 返回栈的大小（栈内元素数量）
    
    // 请注意，以上函数的函数体请你在MyStack.cpp中实现！
};