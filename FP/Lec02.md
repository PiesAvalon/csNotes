# 类和对象
类的定义形式如下：
```cpp
class <类名> {<成员描述>};
```
- 类成员标识符的作用域为整个类的范围
## 例 日期类的定义
```cpp
class Date{
public:
void set(int y, int m, int d){
    _year = y;
    _month = m;
    _day = d;
}

bool is_leap_year(){
    return (_year % 4 == 0 && _year % 100 != 0) || _year % 400 == 0;
}

void print(){
    cout << _year << "." << _month << "." << _day << endl;
}

private:
    int _year, _month, _day;
};
```
## 数据成员
数据成员可以是任何数据和类型，但必须是已经定义的。对于未完成定义的类，数据成员可以是其指针
```cpp
class A; //A是在程序其它地方定义的类，这里是声明。
class B
{ 
    A a; //Error，未见A的定义。
    B b; //Error，B还未定义完，递归了！
    A *p;  //OK
    B *q;  //OK
    A &aa; //OK
    B &bb; //OK
}; 
```
## 成员函数
成员函数定义在类内部，默认为内联函数
```cpp
class A
{  ...
    void f() {...} //建议编译器按内联函数处理
};

class A
{  ...
    void f(); //声明
};
void A::f() { ... } //要用类名受限，区别于非成员函数（全局函数）
```
类成员函数可以重载
```cpp
public:
  void f();
  int f(int i);
  double f(double d);
```
## 类成员访问权限控制
- public
- protected
- private
class的默认访问权限是private。一般接口函数写为public，类内的数据和函数写作private
## 对象
- 类存在于静态的程序中，而对象是在程序运行过程中动态创建的
对象可以直接创建
```cpp
A a1;  //创建一个A类的对象。
A a2[100]; //创建100个A类对象
```
也可以动态创建
```cpp
A* p1 = new A;
A* p2 = new A[100];

delete p1;
delete []p2;
```
成员对象会和包含它的对象一同消亡。  
- 可以对同类对象进行赋值，可以取对象的地址  
- 可以用传值或引用的方式在函数间传递对象
- 可以把对象作为返回值返回，或返回对象引用。但不能返回临时本地对象的引用。