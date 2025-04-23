# Lec11 Classes and Correctness
## const correctness
using const is about style, safty and maintainence  
here is a function of counting people on earth
### const functions
```cpp
int countPeople(Planet& p);
//
int population = countPeople(earth);
```
the countPeople function could mulnipulate earth  
const allows us to reason about wether a variable will be changed 
```cpp
void f(int& x){
    //the value of x here
    aConstMethod(x);

    anotherConstMethod(x);

    //is the same value of x here
}
```
we can make functions const  
for a member function, it is guaranteed to not modify the object.  
it may not consist member functions that modifies the state of the object
```cpp
struct Planet{
    int countPopulation() const;
    void deathStar();
};

void evil(const Planet& p){
    p.countPopulation();//this is fine
    p.deathstar();//this will error
}
```
const ensures everything down the line also as const  
### const pointers
```cpp
//const pointer to non-const int
int* const p;

//non-const pointer to a const int
const int* p;
int const* p; 

//const pointer to a const int
const int* const p;
int const* const p;
```
### const iterators
iterators act like pointers  

`const vector<int>::iterator itr` acts like `int* cont itr `  
this means that the iterator isn't able to move (`itr++` will error)  

`vector<int>::const_iterator itr = v.begin()` makes a read only iterator  
this is a special type of iterator called const iterator
### exersize
```cpp
const int* const myClassMethod(const int* const & param) const
```
### final notes
const on objects: guarantees that the object won't change allowing you to call only const functions and treating all public members as if they were const. this helps the programmer weite safe code, and gives the compiler more information to use optimize.  
const on function: guarantees that the function won't call anything but const functions, and won't modify ant non-static, non-mutable members.   
# Lec12 Operators
operators that can be overloaded:  
Aritthmetic:+ - * / % += -= *= /= %=  
bitwise： & | ~ ！
relational: == != < > <= >= <=>
stream: << >> <<= >>=
logical: && || ^ &= |= ^=
increment: ++ --
memory: -> ->* new new [] delete delete []
misc: ( ) [ ] , = co_await   

c++ operators are functions or member functions
## overloading the += function
```cpp
//a member function
    StringVector& operator+=(const string& element){
        push_back(element);
        return *this;
    }
```
### concept check
1. why return a reference -> for (v1 += v2) += v3
2. why are we returing *this -> same as before
3. the += is a binary operator but only takes a single parameter, because it is a member function

- respect the smantics of the operator, if it normally returns a reference to *this, make sure you do so! 
- when overloading as a member function, the left hand argument is the implicit *this
## overloading the + operator
```cpp
//as a member function
    StringVector operator+(const StringVector& other) const {
        StringVector result = *this;
        for(auto element : other){
            result += element;
        }
        return result;
    }
```
or 
```cpp
//as a non-member function
StringVector operator+(const StringVector& v1, const StringVector& v2){
    auto result = v1;
    return v1.operator+(v2);
}
```
## overloading the << operator
```cpp
class Fraction
{
private:
    int num = 1;
    int den = 2;
public:
    friend ostream& operator<<(ostream& os, const Fraction& fraction);

    Fraction operator+(const Fraction& other){
        Fraction result;
        result.den = den * other.den;
        result.num = den * other.num + num * other.den;
        return result;
    }

};


ostream& operator<<(ostream& os, const Fraction& fraction){
    os << fraction.num << "/" << fraction.den;
    return os;
}
```
### concept check
1. the two parameter isn't all const, why? -> we need to write to the output stream
2. why return a reference? -> for chained called
3. why implement this as a non-member function? -> can't change the stream lib
4. we can't access the private members, so we need the friend

## general rules
1. some must be implemented as members([], (), ->, =)
2. some must be implemented as non-members (<< we can't write to the cout class)
3. if unary operators(++) implement as members
4. if binary operator and treats both operands equally, implement as non-member(mabey friends) eg: + <
5. if binary operator and treats not both equally(modifying one of them and not the other), implemnt as members. eg: +=
## POLA(Principle of Least Astonishment)
```cpp
Time start{15, 20};
start--;//don't do this
start += 10;//this either
```
make things clear and don't shock people
# Lec13 Special Member Functions
use const and non-const member functions so that [] operator can be used for const and non-const objects
```cpp
    string& operator[](size_t index){
        return vec[index];
    }

    const string& operator[](size_t index) const {
        return vec[index];
    }
```
## initialization of a object
### copy constructor
- use initializer list to copy members 
- deep copy all the elements where assignment doen't work
```cpp
Fraction(const Fraction& other) : num(other.num), den(other.den) {
    new ...;
}
```
### copy assignment
simply overload the equal sign(=)
```cpp
//a member function
    Fraction& operator=(const Fraction& other){
        num = other.num;
        den = other.den;
        return *this;
    }
```
you can prevent copies from being made by eplicitly deleting these operations
```cpp
LoggedVector(const LoggedVector& rhs) = delete;
LoggedVector& operator=(const LoggedVector& rhs) = delete;//will throw a compiler error
```
### rule of Three
the copy constructor, copy assignment and the destructor should be defined(or deleted) at the same time.  
if the default operations work, then don't define custum ones.   
  