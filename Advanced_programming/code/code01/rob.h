#pragma once
//rob.h
#include<iostream>
#include<vector>
using namespace std;
struct Course {
    int id;//课程号
    int credit;//学分
    int like;//喜爱
    int lao;//捞度
};
extern Course c[10];//不要动这个全局变量的声明
class Rob {
private:
    Course* courses;
    int n;//课程数
public:
    Rob(int N);
    void sort_course();
    void solution();
    //不要改solution函数名！！！
    void pop(int index);
    int credit();
    int deleteOverThirty(int credit);
    int deleteOver(int credit);
};
bool larger(const Course& a, const Course& b);
int gcd(int a, int b);
bool coprime(int a, int b);
void print_courses(Course* courses, int n);