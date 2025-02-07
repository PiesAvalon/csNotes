#include<iostream>
#include<sstream>
#include<string>
using namespace std;

// template<typename T>
// T myMax(T a, T b){
//     if(a > b)
//         return a;
//     else
//         return b;
// }

// int main(){
//     int a = 1, b = 3;
//     cout << myMax(a, b) << endl;
//     double c = 2.1, d = 4.2;
//     cout << myMax(c, d) << endl;
//     return 0;
// }

template <typename T>
T getData(const string& prompt)
{
    while(true)
    {
        cout << prompt << endl;
        string line;
        if(!getline(cin, line))
            throw domain_error("...");
        T result;
        char trash;
        istringstream iss(line);
        if(iss >> result && !(iss >> trash))
            return result;
        cout << "invalid input, please input again!" << endl;
    }
}

int main(){
    int a = getData<int>("input an int: ");
    cout << a << endl;
    return 0;
}