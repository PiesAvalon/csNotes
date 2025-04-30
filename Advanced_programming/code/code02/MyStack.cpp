// MyStack.cpp
#include "MyStack.h"

using namespace std;
   
// 构造函数
MyStack::MyStack() 
{
    top=NULL;
    sz=0;
}

// 析构函数
MyStack::~MyStack()
{
    while (top != NULL)
    { 
        Node *p = top;   
        top = top->next;
        delete p;
    }  
}

// 以下是需要补充的成员函数
// 字符c入栈
void MyStack::push(char c)
{
    // TODO
    Node* ptr = new Node;
    ptr->content = c;
    ptr->next = top;
    top = ptr;
    sz++;
}

// 栈顶元素出栈，返回出栈元素（我们没有定义空栈pop操作，测试用例中不会涉及）
char MyStack::pop()
{
    char result = 0;
    // TODO
    result = top->content;
    Node* temp = top->next;
    delete top;
    top = temp;
    sz--;
    return result;
}

// 返回栈的大小（栈内元素数量）
int MyStack::size()
{
    int result = 0;
    // TODO
    result = sz;
    return result;
}