#include <iostream>
#include <string>
#include <vector>

// using namespace std;

// 类型结构体
struct Type {
    std::string name;
    bool operator==(const Type &other) const
    {
        return name == other.name;
    }
    bool operator!=(const Type &other) const
    {
        return !(*this == other);
    }
    bool is_template_param() const
    {
        return name.size() == 1 && std::isupper(name[0]); // 我们认为所有的大写字母为模板类型变量
    }
};

// 函数或模板函数定义
struct TemplateFunction {
    std::string name;
    std::vector<Type> parameters; // 参数列表
    bool is_template;             // 是否为模板函数
};

// 调用点信息
struct CallSite {
    std::string function_name;
    std::vector<Type> arguments; // 实参类型
};

//你可以自由添加其他成员变量与辅助函数

std::string resolve_call(const std::vector<TemplateFunction> &functions, CallSite cs);