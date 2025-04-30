#pragma once
#pragma once
#define _CRT_SECURE_NO_WARNINGS
#include<iostream>
using namespace std;

class BooleanString
{
private:
    int len;
    char* str_p;

public:
    // 获取字符串指针
    const char* getStr_p() const { return str_p; }

    // 默认构造函数
    BooleanString();

    // 根据const char* s构造BooleanString，需检测是否仅为01
    BooleanString(const char* s);

    // 拷贝构造函数
    BooleanString(const BooleanString& s);

    // 析构函数
    ~BooleanString();

    // 输出字符串，最后输出换行符
    void print();

    // 重载操作符=
    BooleanString& operator=(const BooleanString& s);
    BooleanString& operator=(const char* s);

    // 支持下标操作符
    char& operator[](int index);

    // + 操作符，返回新建的BooleanString对象，
    BooleanString operator + (const BooleanString& A);

    // == 操作符，字典序比较
    bool operator == (const BooleanString& A);

    // < 操作符，字典序比较
    bool operator < (const BooleanString& A);

    // & 操作符，返回按位与的BooleanString
    BooleanString operator & (const BooleanString& A);

    // | 操作符，返回按位或的BooleanString
    BooleanString operator | (const BooleanString& A);

    // ! 操作符，返回按位非的BooleanString
    BooleanString operator ! ();
};
