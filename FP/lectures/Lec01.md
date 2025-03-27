# 数据抽象与封装
- 抽象：程序外部不需要知道内部具体的实现细节，可以控制复杂度
- 封装：在程序内部将具体的实现细节对使用者隐藏起来，只对外提供一个接口，实现信息保护
- 抽象是一种思维方式，而封装是实现抽象的方法
- 抽象和封装的对象是过程和数据，分为过程的抽象封装（子程序和函数）和数据的抽象和封装（类和对象）

- 数据抽象：只描述数据相关的操作和操作之间的关系，使用者不需要知道数据的具体表现形式
- 数据封装：数据及其操作作为一个整体，数据被隐藏起来，只能通过提供的接口进行访问
## 例 stack数据的表示和操作
stack具有push和pop操作，且遵循LIFO原则，stack的使用者只需要知道以上信息，不需要知道具体的实现方法  
通过面向过程的方式实现stack
```cpp
const int STACK_SIZE = 100;

class Stack{
public:
    Stack();
    void push(int i);
    void pop(int& i);
private:
    int top;
    int buffer[STACK_SIZE];
};

void Stack::push(int i){
    if(top == STACK_SIZE - 1){
        cout << "stack is overflow" << endl;
        exit(-1);//退出程序并返回代码-1
    }
    else{
        top++;
        buffer[top] = i;
        return;
    }
}

void Stack::pop(int& i){
    if(top == -1){
        cout << "stack is underflow" << endl;
        exit(-1);
    }
    else{
        i = buffer[top];
        top--;
        return;
    }
}

Stack::Stack(){
    top = -1;
}
```
也可以在不改变接口的前提下，把stack的实现变为链表
```cpp
const int STACK_SIZE = 100;

struct Node{
    int data;
    Node* next;
};

class Stack{
public:
    Stack();
    void push(int i);
    void pop(int& i);
private:
    Node* top;
};

Stack::Stack(){
    top = nullptr;
}

void Stack::push(int i){
    Node* p = new Node;
    p->data = i;
    p->next = top;
    top = p;
    return;
}

void Stack::pop(int& i){
    if(top == nullptr){
        cout << "stack is underflow" << endl;
        exit(-1);
    }
    else{
        i = top->data;
        Node* d = top;
        top = top->next;
        delete d;
        return;
    }
}
```
# 面向对象程序设计
- 程序由对象组成，对象封装有数据和相关操作
- 对象的特征由类class描述
- 对数据的操作是通过接口完成的
- 类之间可以继承
- 面向对象编程体现了数据的抽象和封装
## 类和对象
- 对象是程序运行过程中动态形成的，而类是在编译时静态存在的
## 继承
- 在定义一个新的类时，可以从已有的类里面继承一部分对象的特征，这一过程是继承
- 继承分为单继承、多继承
## 多态
### 重载
多态可以实现函数名重载、操作符重载
### 类属
- 类属函数：类中可以封装多种操作
- 类属对象：一个类可以描述不同类的特征
- 对象类型和标识的多态：一系列通过虚函数实现的性质
### 绑定
- 动态绑定和静态绑定：和虚函数有关，指对象调用哪个方法在编译时决定还是运行时决定
## 面向对象的好处
- 抽象
- 封装
- 模块化
- 软件复用
- 可维护性