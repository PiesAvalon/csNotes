#include<iostream>
#include<vector>
#include<string>

using namespace std;


vector<int> operator+(const vector<int>& v1, const vector<int> v2){
    auto v = v1;
    for(int i : v2)
        v.push_back(i);
    return v;
}

void printVec(const vector<int>& v){
    for(int u : v)
        cout << u << " ";
    cout << endl;
}

template<typename T>
void mySwap(T& v1, T& v2){
    T temp = move(v1);
    v1 = move(v2);
    v2 = move(temp);
}

int main(){
    vector<string> v1(77777777);
    vector<string> v2(100000000);
    cout << v1.size() << endl;
    mySwap(v1, v2);
    cout << v1.size() << endl;
}