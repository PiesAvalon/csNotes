// MyQueue.cpp
#include "MyQueue.h"

#define store s1
#define help s2

MyQueue::MyQueue()
{
    // TODO
    ;
}

// 元素从队尾入队
void MyQueue::push(char c)
{
    int size = store.size();
    for(int i = 0; i < size; i++){
        help.push(store.pop());
    }
    help.push(c);
    for(int i = 0; i < size + 1; i++){
        store.push(help.pop());
    }
    // TODO
}

// 队首元素出队，返回出队的元素（我们没有定义空队列pop操作，测试用例中不会涉及）
char MyQueue::pop()
{
    char result;
    // TODO
    result = store.pop();
    return result;
}

// 返回队列的大小（队列内元素的个数）
int MyQueue::size()
{
    int result;
    // TODO
    result = store.size();
    return result;
}