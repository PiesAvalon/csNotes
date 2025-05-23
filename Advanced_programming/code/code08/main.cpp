#include "template.h"

int main(){
    Type INT{"int"}, FLOAT{"float"}, DBL{"double"}, STR{"string"}, T{"T"}, U{"U"};
// 函数定义集合（模板和非模板）
std::vector<TemplateFunction> funcs = {
    {"print", {INT}, false},    // 非模板函数 print(int)
    {"print", {T}, true},       // 模板函数 print(T)
    {"sum", {T, T}, true},      // 模板函数 sum(T,T)
    {"sum", {DBL, DBL}, false}, // 非模板函数 sum(double,double)
    {"max", {INT, INT}, false}, // 非模板函数 max(int,int)
    {"max", {T, T}, true},      // 模板函数 max(T,T)
    {"mix", {T, U}, true},       // 模板函数 mix(T,U)
    {"test", {T, INT, T}, true}, // 模板函数 test(T,int)
    {"test", {T, T, T}, true} // 模板函数 test(int,T)
};
// 函数调用点测试集
std::vector<CallSite> calls = {
    // {"print", {INT}},        // 非模板函数 print(int)
    // {"print", {STR}},        // 模板函数 print(string)
    // {"sum", {INT, INT}},     // 模板函数 sum(int,int)
    // {"sum", {DBL, DBL}},     // 非模板函数 sum(double,double)
    // {"sum", {INT, FLOAT}},   // 推导冲突（T 被两次绑定为不同类型）
    // {"max", {INT, INT}},     // 非模板函数 max(int,int)
    // {"max", {STR, STR}},     // 模板函数 max(string,string)
    // {"mix", {INT, STR}},     // 模板函数 mix(int,string)
    // {"mix", {FLOAT, FLOAT}}, // 模板函数 mix(float,float)
    // {"unknown", {INT}},       // 无此函数定义
    {"test", {FLOAT, FLOAT, FLOAT}}
};
for (const auto &cs : calls) {
    std::cout << resolve_call(funcs, cs) << std::endl;
}
}