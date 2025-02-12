//Lec01 封装
//创建类
#include<iostream>

const double PI = 3.14;

class Circle
{
    //访问权限
    //公共权限
public:
    //属性
    int m_r;

    //方法
    double claculateZC(){
        return 2 * PI * m_r;
    }

};

int man(){
    //创建对象
    Circle c1;
    //属性赋值
    c1.m_r = 10;

    std::cout << "perimeter of circle: " << c1.claculateZC() << std::endl;
    return 0;
}

//设计学生类，属性有姓名和学号。可以给学生姓名和学号赋值，可以显示姓名和学号。
#include<string>
class Student
{
    public:

    //类中的属性和行为都叫成员
    //属性 成员属性 成员变量
    //行为 成员函数 成员方法
    int id;
    std::string name;

    void printName(){
        std::cout << "Student name: " << name << std::endl;
    }

    void printID(){
        std::cout << "Student ID: " << id << std::endl;
    }

    void setName(std::string n_name){
        name = n_name;
    }

    void setID(int n_id){
        id = n_id;
    }
};

// int man(){
//     Student s1;
//     s1.setName("Jack");
//     s1.setID(114);

//     s1.printID();
//     s1.printName();
//     return 0;
// }

//访问权限
//公共权限public 成员 类内可以访问 类外可以访问
//保护权限protected 成员 类内可以访问 类外不可访问
//私有权限private 成员 类内可以访问 类外不可访问

class Person
{
public:
    std::string m_Name;

protected:
    std::string m_Car;

private:
    int m_Password;

public:
    void func()
    {
        m_Name = "zhangsan";
        m_Car = "tuolaji";
        m_Password = 1111;
    }
};

// int man(){
//     Person p1;

//     p1.m_Name = "lisi";
//     //p1.m_Car = "benchi";//error: member "Person::m_Car" (declared at line 82) is inaccessible
// }

//struct和class区别

//struct 默认权限为public
//class 默认权限为private

class C1
{
    int m_A;//默认权限是private
};

struct C2
{
private:
    int id;
};

// int man(){
//     C2 circle_struct;
//     //circle_struct.id = 10; this will error
// }

//成员属性设置为私有
//可以控制读写权限
//对写权限可以检测数据有效性

class Person1
{
public:
    void setName(std::string name){
        m_Name = name;
    }

    std::string getName(){
        return m_Name;
    }

    int getAge(){
        return m_Age;
    }

    void setAge(int age){
        if(age < 0 || age > 150)
            return ;
        m_Age = age;
    }

    void set_Idol(std::string name){
        m_Idol = name;
    }

private:
    std::string m_Name;

    int m_Age = 18;

    std::string m_Idol;
};

// int main(){
//     Person1 p1;
//     p1.setAge(20);
//     std::cout << "Age is: " << p1.getAge() << std::endl;
//     return 0;
// }

// 练习案例1：设计立方体类
// 设计立方体类(Cube)
// 求出立方体的面积和体积
// 分别用全局函数和成员函数判断两个立方体是否相等。

class Cube
{
private:
    int m_L;
    int m_H;
    int m_W;
public:
    int calculateS() const {//marking a function as const means not changing the object
        return 2 * (m_L * m_H + m_H * m_W + m_L * m_W);
    }
    
    int calculateV() const {
        return m_L * m_H * m_W;
    }

    bool equal(const Cube& other){
        return calculateV() == other.calculateV();
    }
    
};

bool cubeEqual(const Cube& a, const Cube& b){
    return a.calculateV() == b.calculateV();
}

// 练习案例2：点和圆的关系
// 设计一个圆形类（Circle），和一个点类（Point），计算点和圆的关系。
#include<cmath>

struct Position
{
    double x;
    double y;
};

double len(Position p1, Position p2){
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
}

class Circle1
{   
public:
    Position m_p;
    double r;

    bool inCircle(Position p){
        return r >= len(p, m_p);
    }

};