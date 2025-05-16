#include "List.h"

List::List()// 默认构造函数, head的next和back应该指向自己
{
    head.next = &head;
    head.back = &head;
}

List::List(const List &l_)// 拷贝构造函数, 需要对所有 node 都进行拷贝
{
    head = l_.head;
    head.next = &head;
    head.back = &head;
    size_ = l_.size_;
    auto cur = head;
    auto cur2 = l_.head;
    head.e = l_.head.e;
    for(int i = 0; i < size_; ++i)
    {
        ListNode *newNode = new ListNode();
        newNode->e = cur2.next->e;
        newNode->next = &head;
        newNode->back = &cur;
        cur.next = newNode;
        cur2 = *cur2.next;
        cur = *cur.next;
    }
}

List::~List()
{
    auto cur = head.next;
    while(cur != &head)
    {
        auto next = cur->next;
        delete cur;
        cur = next;
    }
    head.next = &head;
    head.back = &head;
    size_ = 0;
}

void List::operator=(const List &l_)
{
    

}

bool List::push_front(const Element &e)// 在头节点的next处插入e,分配空间失败时返回false
{
    ListNode *newNode = new ListNode();
    if(newNode == nullptr)
        return false;
    newNode->e = e;
    newNode->next = head.next;
    newNode->back = &head;
    head.next->back = newNode;
    head.next = newNode;
    ++size_;
    return true;
}

bool List::push_back(const Element &e)
{
    ListNode *newNode = new ListNode();
    if(newNode == nullptr)
        return false;
    newNode->e = e;
    newNode->next = &head;
    newNode->back = head.back;
    head.back->next = newNode;
    head.back = newNode;
    ++size_;
    return true;
}

bool List::pop_front()// 弹出头节点的next节点并释放,不可弹出时返回false
{
    if(head.next == &head)
        return false;
    auto cur = head.next;
    head.next = cur->next;
    cur->next->back = &head;
    delete cur;
    --size_;
    return true;
}


bool List::pop_back()
{
    if(head.back == &head)
        return false;
    auto cur = head.back;
    head.back = cur->back;
    cur->back->next = &head;
    delete cur;
    --size_;
    return true;
}

bool List::remove(const Element &e)// 删除链表中所有值为e的节点并释放,成功删除返回true
{
    auto cur = head.next;
    bool flag = false;
    while(cur != &head)
    {
        if(cur->e == e)
        {
            auto next = cur->next;
            cur->back->next = next;
            next->back = cur->back;
            delete cur;
            cur = next;
            --size_;
            flag = true;
        }
        else
        {
            cur = cur->next;
        }
    }
    if(flag)
        return true;
}

bool List::insert(const Element &e, ListNode *ln)// 在节点ln后插入e,分配空间失败时返回false,测试用例中给定的ln均合法
{
    ListNode *newNode = new ListNode();
    if(newNode == nullptr)
        return false;
    newNode->e = e;
    newNode->next = ln->next;
    newNode->back = ln;
    ln->next->back = newNode;
    ln->next = newNode;
    ++size_;
    return true;
}

void List::erase(ListNode *ln)// 从链表中删除节点ln,释放ln的空间,测试用例中给定的ln均合法
{
    ln->back->next = ln->next;
    ln->next->back = ln->back;
    delete ln;
    --size_;
}

ListNode *List::operator[](size_t i)// 获取正向第i个节点(从0开始,不包括head)的指针,不存在则返回空
{
    if(i >= size_)
        return nullptr;
    auto cur = &head;
    for(int j = 0; j <= i; ++j)
    {
        cur = cur->next;
    }
    return cur;
}


void List::print()// 正向(next)输出链表中的元素num,不包括head,空格分隔,换行符结尾;空则输出换行符
{
    auto cur = head.next;
    if(cur == &head)
    {
        std::cout << std::endl;
        return;
    }
    while(cur != &head)
    {
        std::cout << cur->e.num << " ";
        cur = cur->next;
    }
    std::cout << std::endl;
}
