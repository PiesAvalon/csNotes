#include "template.h"
#include <algorithm>
#include<map>

int get_template_param_num(const TemplateFunction &f){
    if(!f.is_template){
        return 0;
    }
    int num = 0;
    for(const auto &p : f.parameters){
        if(p.is_template_param()){
            num++;
        }
    }
    return num;
}
int get_template_param_type_num(const TemplateFunction &f){
    if(!f.is_template){
        return 0;
    }
    std::vector<std::string> types;
    for(const auto &p : f.parameters){
        if(p.is_template_param() && 
           std::find(types.begin(), types.end(), p.name) == types.end()){
            types.push_back(p.name);
        }
    }
    return types.size();
}

bool template_and_function(const TemplateFunction &f, const CallSite &cs) {
    // std::cout << "template_and_function" << std::endl;
    // for(const auto &param : f.parameters) {
    //     std::cout << param.name << " ";
    // }
    // std::cout << std::endl;
    // for(const auto &arg : cs.arguments) {
    //     std::cout << arg.name << " ";
    // }
    // std::cout << std::endl;

    // 检查函数名和参数个数是否匹配
    if (f.name != cs.function_name || f.parameters.size() != cs.arguments.size()) {
        return false;
    }

    // 用于记录模板参数的绑定关系
    std::map<std::string, Type> template_bindings;

    // 遍历所有参数
    for (size_t i = 0; i < f.parameters.size(); i++) {
        const Type& param = f.parameters[i];
        const Type& arg = cs.arguments[i];

        if (param.is_template_param()) {
            // 如果是模板参数
            auto it = template_bindings.find(param.name);
            if (it == template_bindings.end()) {
                // 第一次遇到这个模板参数，记录绑定关系
                template_bindings[param.name] = arg;
            } else {
                // 如果之前已经绑定过，检查是否与之前的绑定一致
                if (it->second != arg) {
                    return false;
                }
            }
        } else {
            // 如果不是模板参数，直接比较类型是否匹配
            if (param != arg) {
                return false;
            }
        }
    }
    
    return true;
}

std::string get_resolved_string(const TemplateFunction &f){
        auto result =  "Resolved to: " + f.name + "(" ;
    for(int i = 0; i < f.parameters.size(); i++){
    result += f.parameters[i].name;
    if(i != f.parameters.size() - 1){
        result += ", ";
    }
    }
    result += ")";
    if(f.is_template){
        result += " [template]";
    }
    return result;
}

std::string resolve_call(const std::vector<TemplateFunction> &functions, CallSite cs)
{
    // TODO
    for(const auto &f : functions){
        if(!f.is_template && f.name == cs.function_name && f.parameters.size() == cs.arguments.size()){
            bool tem = true;
            for(int i = 0; i < f.parameters.size(); i++){
                if(!(f.parameters[i] == cs.arguments[i])){
                    tem = false;
                    break;
                }
            }
            if(tem){
                return get_resolved_string(f);
            }
        }
    }

    std::vector<TemplateFunction> candidates;
    for(const auto &f : functions){
        if(f.is_template && f.name == cs.function_name && f.parameters.size() == cs.arguments.size()){
            candidates.push_back(f);
        }
    }

    // for(int i = 0; i < candidates.size(); i++){
    //     std::cout << "Candidate: " << candidates[i].name << candidates[i].parameters.size() << std::endl;
    // }

    for(int i = 0; i < candidates.size(); i++){
        auto temF = candidates[i];

        for(int j = 0; j < temF.parameters.size(); j++){
            if(!temF.parameters[j].is_template_param() && temF.parameters[j] != cs.arguments[j]){
                candidates.erase(candidates.begin() + i);
                i--;
                break;
            }
        }
    }

        std::sort(candidates.begin(), candidates.end(), [](const TemplateFunction &a, const TemplateFunction &b){
        if(get_template_param_num(a) < get_template_param_num(b)){
            return true;
        }
        if(get_template_param_num(a) > get_template_param_num(b)){
            return false;
        }
        if(get_template_param_type_num(a) < get_template_param_type_num(b)){
            return true;
        }
        if(get_template_param_type_num(a) > get_template_param_type_num(b)){
            return false;
        }
        return false;});
    
    if(candidates.size() > 0){
        for(int i = 0; i < candidates.size(); i++){
            if(template_and_function(candidates[i], cs)){
                return get_resolved_string(candidates[i]);
            }
        }

    }



    return "Function not found.";
}


// int main(){
//     Type INT{"int"}, FLOAT{"float"}, DBL{"double"}, STR{"string"}, T{"T"}, U{"U"};
// // 函数定义集合（模板和非模板）
// std::vector<TemplateFunction> funcs = {
//     {"print", {INT}, false},    // 非模板函数 print(int)
//     {"print", {T}, true},       // 模板函数 print(T)
//     {"sum", {T, T}, true},      // 模板函数 sum(T,T)
//     {"sum", {DBL, DBL}, false}, // 非模板函数 sum(double,double)
//     {"max", {INT, INT}, false}, // 非模板函数 max(int,int)
//     {"max", {T, T}, true},      // 模板函数 max(T,T)
//     {"mix", {T, U}, true},       // 模板函数 mix(T,U)
//     {"test", {T, INT, T}, true}, // 模板函数 test(T,int)
//     {"test", {T, T, T}, true} // 模板函数 test(int,T)
// };
// // 函数调用点测试集
// std::vector<CallSite> calls = {
//     // {"print", {INT}},        // 非模板函数 print(int)
//     // {"print", {STR}},        // 模板函数 print(string)
//     // {"sum", {INT, INT}},     // 模板函数 sum(int,int)
//     // {"sum", {DBL, DBL}},     // 非模板函数 sum(double,double)
//     // {"sum", {INT, FLOAT}},   // 推导冲突（T 被两次绑定为不同类型）
//     // {"max", {INT, INT}},     // 非模板函数 max(int,int)
//     // {"max", {STR, STR}},     // 模板函数 max(string,string)
//     // {"mix", {INT, STR}},     // 模板函数 mix(int,string)
//     // {"mix", {FLOAT, FLOAT}}, // 模板函数 mix(float,float)
//     // {"unknown", {INT}},       // 无此函数定义
//     {"test", {FLOAT, INT, FLOAT}}
// };
// for (const auto &cs : calls) {
//     std::cout << resolve_call(funcs, cs) << std::endl;
// }
// }