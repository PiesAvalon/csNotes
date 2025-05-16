#pragma once
#include <iostream>
#include "ListNode.h"

class List
{
    ListNode head; // 请注意数据类型，可能需要先取地址再进行链表操作
    size_t size_;  
public:
    // 构造和析构
    List();                         // 默认构造函数, head的next和back应该指向自己
    List(const List &l_);           // 拷贝构造函数, 需要对所有 node 都进行拷贝
    ~List();                        // 析构函数, 释放申请的空间。我们不会在析构后进行访问
    void operator=(const List &l_); // 赋值操作符, 与拷贝构造相似

    size_t size() { return size_; };

    // 访问和更改,返回访问或更改是否成功
    bool push_front(const Element &e); // 在头节点的next处插入e,分配空间失败时返回false
    bool push_back(const Element &e);
    bool pop_front(); // 弹出头节点的next节点并释放,不可弹出时返回false
    bool pop_back();
    bool remove(const Element &e);               // 删除链表中所有值为e的节点并释放,成功删除返回true
    bool insert(const Element &e, ListNode *ln); // 在节点ln后插入e,分配空间失败时返回false,测试用例中给定的ln均合法
    void erase(ListNode *ln);                    // 从链表中删除节点ln,释放ln的空间,测试用例中给定的ln均合法

    ListNode *operator[](size_t i); // 获取正向第i个节点(从0开始,不包括head)的指针,不存在则返回空

    // 遍历输出
    void print(); // 正向(next)输出链表中的元素num,不包括head,空格分隔,换行符结尾;空则输出换行符
};



