#include<iostream>
#include<vector>
#include<string>
#include<deque>
#include<stack>

int main(){
    std::vector<int> names{1, 2};
    int a = names[2];
    std::cout << a << std::endl;//this will not fail the programm
    int b = names.at(2);
    std::cout << b << std::endl;//this will throw an error


    std::deque<int> deInt{1, 2};
    deInt.push_front(0);
    deInt.push_back(3);
    std::cout << deInt[0] << deInt[3] << std::endl;

    std::stack<int> stackInt;
    stackInt.push(10);
    stackInt.push(20);
    std::cout << stackInt.top() << std::endl;//20
    stackInt.pop();
    std::cout << stackInt.top() << std::endl;//10

    return 0;
}