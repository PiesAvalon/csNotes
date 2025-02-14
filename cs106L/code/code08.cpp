#include<iostream>
#include<vector>
#include<string>

using namespace std;

class Foo
{
public:
    const int* const myClassMethod(const int* const & param) const{
        return param;
    }
};

class StringVector
{
public:
    vector<string> vec = {"okok"};

    void push_back(const string& s){
        vec.push_back(s);
    }

    void print(){
        for(string s : vec){
            cout << s << endl;
        }
    }

    vector<string>::const_iterator begin() const{
        return vec.begin();
    }

    vector<string>::const_iterator end() const {
        return vec.end();
    }

    StringVector& operator+=(const string& element){
        push_back(element);
        return *this;
    }

    StringVector operator+(const StringVector& other) const {
        StringVector result = *this;
        for(auto element : other){
            result += element;
        }
        return result;
    }

    string& operator[](size_t index){
        return vec[index];
    }

    const string& operator[](size_t index) const {
        return vec[index];
    }
};

// StringVector operator+(const StringVector& v1, const StringVector& v2){
//     auto result = v1;
//     return v1.operator+(v2);
// }

class Fraction
{
private:
    int num;
    int den;
public:
    friend ostream& operator<<(ostream& os, const Fraction& fraction);

    Fraction(int num, int den) : num(num), den(den) {}

    ~Fraction(){}

    Fraction(const Fraction& other) : num(other.num), den(other.den) {}

    Fraction operator+(const Fraction& other){
        Fraction result(1, 2);
        result.den = den * other.den;
        result.num = den * other.num + num * other.den;
        return result;
    }

    Fraction& operator=(const Fraction& other){
        num = other.num;
        den = other.den;
        return *this;
    }

};



ostream& operator<<(ostream& os, const Fraction& fraction){
    os << fraction.num << "/" << fraction.den;
    return os;
}

int main(){
    Foo f;
    const int a = 10;
    const int* const pa = &a;
    auto pb = f.myClassMethod(pa);

    StringVector v1, v2;
    v1 += "hello";
    v2 += "world";
    auto vec = v1 + v2;
    vec.print();

    Fraction frac(1, 2);
    cout << frac << endl;

    cout << v1[0] << endl;
    
    v1[0] = "aaa";

    const StringVector v3;

    cout << v3[0] << endl;

    Fraction f1(2, 3);
    Fraction f2{f1};
    cout << f1 << f2 << f1 + f2 << endl;

    Fraction f3(2, 6);
    f3 = f1;
    cout << f1 << f3 << endl;
    

    return 0;
}