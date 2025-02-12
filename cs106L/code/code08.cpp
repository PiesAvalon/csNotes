#include<iostream>

class Foo
{
public:
    const int* const myClassMethod(const int* const & param) const{
        return param;
    }
};

int main(){
    Foo f;
    const int a = 10;
    const int* const pa = &a;
    auto pb = f.myClassMethod(pa);
    return 0;
}