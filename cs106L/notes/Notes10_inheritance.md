# Lec15 Inheritance
## Namespaces
the std lib uses common names, it's easy for libs to conflict their names.  
we can create a namespace ourselves:
```cpp
namespace Lecture{
    int count(const std::vector<int>& v){
        int cnt = 0;
        for(auto i : v){
            if(i == 1)
                cnt++;
        }
        return cnt;
    }
}

int main(){
    std::vector<int> v{2, 1, 4, 3, 6, 4, 1, 4};
    std::cout << "manual count: " << Lecture::count(v) << std::endl;
    std::cout << "std count: " << std::count(v.begin(), v.end(), 1) << std::endl;
    return 0;
}
```
## Scope Recolution
when defining classes members, add scope resolution
```cpp
StringVector::StringVector(...)
```
## interface
templates use the concept of implicit interface while inheritance uses the ecplicit interface
```cpp
class Drink{
public:
    virtual void make() = 0;
};
```
to make a class an interface, make sure that it only consist of virtual functions  
to inplement an interface, a class must define all of those virtual functions
```cpp
class Tea : public Drink{
public:
    void make(){
        //...;
    }
};
```
# Lec16 Template Classes and Concepts
## abstract classes
if a class has at least one pure virual function, then it's a abstract class, abstract classes can't be instantiated, and all of it's derived classed should inplement the pure virtula functions  
an abstract class can have anything other like a normal class  
overriding non-virtual functions is "leagal but not moral"
## terminology
- base (superclass, parent) class  
- derived (subclass, child) class
## constructor & destructor
in a derived class, the base class constructor should be called first  
destructor of base class should be virtual to ensure full destruct  
## access specifiers
private: only accessed by this class  
protected: accessed by this class or derived classes  
public: accessed by anyone  
## classes vs templates
template
- runtime efficiency
- no common base
classes
- compile time efficiency is important 
- want to hide implementations
- don't want code bloat
## casting 
```cpp
//all these are leagal
int a = (int)b;
int a = int(b);
int a = static_cast<int>(b);
```
using static cast is considered the best practice.  

## Template Classes
makes a template of a class, for example, we can modify the prority queu of ints to a pq of all types:
```cpp
class Priority_Q{
public:
    Priority_Q() = default;
    ~Priority_Q() = default;

    int top() const {
        if(_heap.empty()) {}//throw error.
        return _heap[0];
    }

    void pop(){
        if(!_heap.empty()){
            std::pop_heap(_heap.begin(), _heap.end());
            _heap.pop_back();
            _count--;
        }
    }

    void push(int val){
        _heap.push_back(val);
        std::push_heap(_heap.begin(), _heap.end());
        _count++;
    }

    friend std::ostream& operator<<(std::ostream& os, Priority_Q q){
        os << "{ ";
        for(int i = 0; i < q._count; i++){
            os << q._heap[i] << " ";//the printing order is wierd, it's ok
        }
        os << "}";
        return os;
    }

private:
    int _count;
    vector<int> _heap;

};
```
## Cocepts(c++20)
concepts is a feature in c++20 that allows us to turn template implicit interface into explicit interface