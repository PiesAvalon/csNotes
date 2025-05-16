// #include <iostream>
// #include "List.h"
#include "List.h"
// #include "ListNode.h"
using namespace std;

int main(){
    List l;
    l.push_back({1});
    l.push_back({2});
    l.push_back({3});
    l.push_back({4});
    l.push_back({5});
    l.push_back({6});
    l.print();
    l.insert({23},l[1]);
    l.insert({56},l[5]);
    l.print();
    l.erase(l[5]);
    l.erase(l[1]);
    l.print();
}