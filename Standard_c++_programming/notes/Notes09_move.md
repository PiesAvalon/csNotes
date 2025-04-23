# Lec14 Move Semantics
## perfect forwarding
use the vector.emplace_back method
```cpp
elections.emplace_back("Nelson Mandela", "South Africa", 1994);
reElections.push_back(President("Franklin Delano Roosevelt", "the USA", 1936));
```
they work the same, but with emplace_back, no new object is created, so it is more efficient  
```cpp
StrVector readNames(size_t size);

int main(){
    StrVector name1 = readNames(54321234);//copy constructor
    StrVector name2;//default constructor
    name2 = readNames(543212342);//copy assignment
}

StrVector readNames(size_tsize){
    StrVector names(size,"Ito");//fill constructor
    return names;//copy constructor
}
```
here we make a lot of copies, but in c++17 **copy elision** will make the code faster
## lvalues and rvalues
lvalues have a name and identity, able to be find using & operator
rvlues don't have a name or identity, cannot be find with & operator
->  
lvalues are on the left of assignment while rvalues are on the right  
```cpp
int val = 2;//lvalue rvalue
int* ptr = 0x02248837;//lvalue rvalue
vector<int> v1{1, 2, 3};//lvalue rvalue

auto v4 = v1 + v2;//v1, v2 is l, v1 + v2 is r
v1 += v4;//l l
size_t size = v.size()//l r
val = static_cast<int>(size);//size is l, static_cast<int>(size) is r
v1[1] = 4*i;//v1[1] is returned by reference, so it is a l value
ptr = &val;//lvalue, rvalue
v1[2] = *ptr;//lvalue, lvalue
```
rvalue references and lvalue references
```cpp
vector& ptr2 = ptr1;//a lvalue reference, making ptr2 a new name for ptr1
vector&& v4 = v1 + v2;//a rvalue reference, extending the lifetime of the rvalue r1 + r2
auto&& v4 = v1;//deduces to a lvalue reference
```
rvalue reference can only be bind to rvalues, same to the lvalue references.  
```cpp
const auto& ptr3 = ptr + 5;//this is also allowed
```
can bind const l-value ref to r value  
an lvalue is not disposable, so you can copy from, but cannot move
r value is disposable, so you can copy of move from it. 
## move constructors and move assignments
move constructor: create new from existing r value  
move assignment: overrite existing from existing r value  
```cpp
//this code hasn't been ran, but should work in theory
StrVector::StrVector(StrVector&& other) : elems(other.elems), logicalsize(other.logicalsize), allocatedsize(other.allocatedsize){
    cout << "hello from the move constructor" << endl;
    other.elems = nullptr;
}

StrVector& Strvector::operator=(StrVector&& rhs){
    cout << "hello from the move assignment" << endl;
    if(this ！= &rhs){
        delete [] elems;
        logicalsize = std::move(rhs.logicalsize);
        allocatedsize = std::move(rhs.allocatedsize);
        elems = std::move(rhs.elems);
    }
}
```
the solution: std::move unconditionally casts a variable to an r-value

## swap function
task: write a swap function
```cpp
template<typename T>
void mySwap(T& v1, T& v2){
    T temp = move(v1);
    v1 = move(v2);
    v2 = move(temp);
}
```