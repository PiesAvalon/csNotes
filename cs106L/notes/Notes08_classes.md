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