# Lec04 sequence containers
## overview of STL
the STL is one of the oldest libraries in c++ and is still being added new features.  
for the following lectures, we'll talk about the features of c++:

containers, adaptors,

iterators, functions/lambdas, algorithms
## sequence container
provides access to sequences of elements.
includes:
- std::vector\<T>
- std::deque\<T>
- std::list\<T>
- std::array\<T>
- std::forward_list\<T>

## vector(std::vector\<T>)
elements in vectors can be of **any** type
```cpp
std::vector<int> vecInt;//vevtor of ints
std::vector<string> vecStr;//vector of strings
std::vector<myStruct> vecstruct;//vector of structs
std::vector<std::vector<string>> vecVec//vector of vecotr of strings
```
create a empty vector
```cpp
vector<int> v;
```
create a vector of n copies of zero
```cpp
vector<int> v(n);
```
create a vector of n copies of a value k
```cpp
vector<int> v(n, k)
```
add k to the end of the vector
```cpp
v.push_back(k);
```
it is slow to do`v.push_front()`, cpp's solution is `std::deque<T>`
clear vector
```cpp
v.clear();
```
get the element at index i
```cpp
int k = v.at(i);
int k = v[i];
```
there are differences between the two ways of accessing. because although the vector object is stored on the stack, its elements are stored on the heap.
philosophy: if you write your code correctly, bouds checking will just slow your code down  
```cpp
int main(){ 
    std::vector<int> names = {1, 2};
    int a = names[2];
    std::cout << a << std::endl;//this will not fail the programm
    int b = names.at(2);
    std::cout << b << std::endl;//this will throw an error
}
```
check if the vector is empty
```cpp
if(v.empty())...
```
replace the element at index i
```cpp
v.at(i) = k;
v[i] = k;
```
## deque(std::deque\<T>)
the deque is simply a vector that can be added in the front easily. for this tradeoff, accessing elements inside a deque isn't as fast as a vector. 
```cpp
int main(){
    std::deque<int> deInt{1, 2};
    deInt.push_front(0);
    deInt.push_back(3);
    std::cout << deInt[0] << deInt[3] << std::endl;
}
```
"vector is the type ofsequence that should be used by default... dequeis the data structure ofchoice when most insertions and deletions takeplace at the beginning or at the end ofthe sequence."
--C++ lSO Standard (section 23.1.1.2):
## container adaptors
stack and queues are cotainer adaptors, they are inplemented by the vector or the deque, but adapts to a particular usage.
### stack & queues
```cpp
template<
    class T,
    class Container = std::deque<T>//this means is possible to use a self defined class for a stack

> class stack;
```