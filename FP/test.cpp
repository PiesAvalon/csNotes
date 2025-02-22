#include<iostream>
#include<cstdlib>

using namespace std;

class A{};

int main(){
    A* p1 = new A;
    A* p2 = new A[100];

    delete p1;
    delete []p2;
}