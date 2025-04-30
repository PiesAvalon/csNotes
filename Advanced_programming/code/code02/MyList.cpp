#include "mylist.h"
#include <iostream>

using namespace std;

// 构造函数
MyList::MyList() : head(nullptr), list_size(0) {}

// 析构函数
MyList::~MyList() {
    //析构，但不调用clean（），我们不希望有输出
    if(list_size == 0){
        return;
    }
    if(list_size == 1){
        delete head;
        return;
    }
    Node* crr = head;
    Node* next = head->next;
    while(next){
        delete crr;
        crr = next;
        next = next->next;
    }
    delete crr;
}

// 获取指定位置的节点
MyList::Node* MyList::getNodeAt(int index) const {
    //TODO
    if(!(0<=index && index<list_size)){
        cout << -1 << endl;
        return nullptr;
    }
    Node* p = head;
    for(int i = 0; i < index; i++){
        p = p->next;
    }
    return p;
    //如果index不合法:
        //cout<<-1<<endl;
}

// 插入操作
void MyList::insert(int index, int value) {
    //TODO
    if(!(0<=index && index<=list_size)){
        cout << -1 << endl;
        return;
    }
    list_size++;
    Node* newPtr = new Node(value);
    if(index == 0){
        newPtr->next = head;
        head = newPtr;
        return;
    }

    Node* start = head;
    for(int i = 0; i < index - 1; i++){
        start = start->next;
    }
    newPtr->next = start->next;
    start->next = newPtr;
    //如果index不合法:
        //cout<<-1<<endl;
}

// 删除操作
void MyList::remove(int index) {
    //TODO
    if(!getNodeAt(index)){
        return;
    }
    list_size--;
    if(index == 0){
        Node* p = head->next;
        delete head;
        head = p;
        return;
    }
    Node* ptr = head;
    for(int i = 0; i < index - 1; i++){
        ptr = ptr->next;
    }
    Node* deleteNode = ptr->next;
    ptr->next = deleteNode->next;
    delete deleteNode;

    //如果index不合法:
        //cout<<-1<<endl;
}

// 获取指定位置的元素
int MyList::get(int index) const {
    //TODO
    if(index < 0 || index >= list_size){
        return -1;
    }
    Node* ptr = head;
    for(int i = 0; i < index; i ++){
        ptr = ptr->next;
    }
    return ptr->value;
    //如果index不合法,返回-1
}

// 设置指定位置的元素
void MyList::set(int index, int value) {
    //TOOD
    Node* ptr = getNodeAt(index);
    if(!ptr){
        return ;
    }
    ptr->value = value;
    //如果index不合法:
        //cout<<-1<<endl;
}

// 获取线性表的大小
int MyList::size() const {
    //TODO
    return list_size;
    //空就返回0
}

// 清空线性表
void MyList::clear() {
    //TODO
    if(list_size == 0){
        cout<<"Cleared"<<endl;//不要修改
        return;
    }
    if(list_size == 1){
        delete head;
        list_size = 0;
        head = nullptr;
        cout<<"Cleared"<<endl;//不要修改
        return;
    }
    Node* cur = head;
    Node* next = head->next;
    while(next){
        delete cur;
        cur = next;
        next = next->next;
    }
    delete cur;
    list_size = 0;
    head = nullptr;

    cout<<"Cleared"<<endl;//不要修改
}

// 查询从 index 开始的前 k 个元素的和
int MyList::sum_from(int index, int k) const {
    //TOOD
    if(index < 0 || index >= list_size){
        return -1;
    }
    if(k < 0){
        return -1;
    }
    if(index + k - 1 >= list_size){
        k = list_size - index;
    }
    Node* p = getNodeAt(index);
    int sum = 0;
    for(int i = 0; i < k; i++){
        sum += p->value;
        p = p->next;
    }
    return sum;
    //比如1，2，3，4，5，6 sum（0，2） 就是1+2=3
    //如果操作不合法,返回-1
}

// 反转链表
void MyList::reverse() {
    //TODO
    if(list_size <= 1){
        return;
    }
    // Node* a = head;
    // Node* b = head->next;
    // Node* tem = nullptr;
    // for(int i = 0; i < list_size; i++){
    //     a->next = tem;
    //     tem = a;
    //     a = b;
    //     if(!b){
    //         b = b->next;
    //     }
    //     head = a;
    // }

    Node* pre = nullptr;
    Node* cur = head;
    while(cur != nullptr){
        Node* temp = cur->next;
        cur->next = pre;
        pre = cur;
        cur = temp;
    }
    head = pre;
    //注意指针的操作，我们不希望你只是交换值
}
void MyList::merge(MyList& other){
    //TODO
    if(list_size == 0){
        head = other.head;
        list_size = other.size();
        other.head = nullptr;
        return;
    }
    Node* ptr = getNodeAt(list_size - 1);
    ptr->next = other.head;
    list_size += other.size();
    other.head = nullptr;
    
}