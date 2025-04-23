# Lec05 Associative Containers & Iterators
## associative containers
have no idea of a sequence.  
data is accessed using the key instead of indexs.  
includes:
- std::map<T1, T2>
- std::set\<T>
- std::unordered_map<T1, T2>
- std::unordered_set\<T>
maps/sets: keys in sorted order, faster to iterate through a range of elements  
unordered map/sets: faster to access individual elements by key  
## maps
maps are in the <map> headers file, they provide efficient iteration
```cpp
#include<iostream>
#include<map>
#include<string>

int main(){
    std::map<int, std::string> myMap;
    myMap[0] = "zero";//add pair to a map

    std::string a = myMap[0];
    std::string b = myMap[1];//creates a key and initialize it
    std::cout << a <<std::endl;
    std::cout << b << std::endl;
    // std::string c = myMap.at(2);//this will error

    if(myMap.find(1) != myMap.end())//if doesn't exist, find will return a iterator repersenting the position one past the last element in the map
        std::cout << "1 exist in map" << std::endl;
    
    if(myMap.find(10) == myMap.end())
        std::cout << "10 doesn't exist in map" << std::endl;

    if(myMap.count(0))//count returns 0 or 1 depending on whether exist in map
        std::cout << "0 exist in map" << std::endl;

    return 0;
}
```
### multi-maps
mullti-maps allow the same key for different values
```cpp
std::multimap<int, int> myMap;
myMap.insert(make_pair(3, 3));
myMap.insert({3, 12});//shortened syntax
cout << myMap.count(3) << endl;//prints 2
```

## iterators
associative containers and containers have no notion of a sequence/indexing  
use `.begin()` to create a iterator and `.end()` to see if it reaches the end.  
```cpp
int main(){
    std::vector<int> intVec{0, 1, 2, 30};
    std::vector<int>::iterator it{intVec.begin()};

    while(it != intVec.end()){//end points to the location after last of the pointer
        std::cout << *it << std::endl;
        std::cout << &(*it) << std::endl;
        it++;
    }
    return 0;
}
```
iterators abstracts the container used, it allow us to standerlize functions.  
# Lec06 Advanced Containers & Iterators
## map iterators
map iterators are slightly different because we have both keys and values  
dereferencing a `set<string>` iterator gives you a string  
dereferencing a `map<string, int>` iterator gives you an `std::pair<string, int>`  
```cpp
int main(){
    std::map<int, std::string> myMap;
    myMap.insert({0, "zero"});
    myMap.insert({1, "one"});
    std::map<int, std::string>::iterator iter = myMap.begin();
    while(iter != myMap.end()){
        std::cout << (*iter).first << (*iter).second << std::endl;
        //(*iter).first is same to iter->first
        iter++;
    }
    return 0; 
}
```

## range-based for loop
this is sweet, it simplifies the syntax of iterating through a container  
the declaration is the type of the container being iterated  
```cpp
for (declaration : container) {
    // body of the loop
}
```
```cpp
for(std::pair<int, std::string> elem : myMap){
        std::cout << elem.first << elem.second << std::endl;
    }
```
using structured bindings is also fine(unpack)
```cpp
for(auto [key, value] : myMap){
        std::cout << key << value << std::endl;
    }
```
## examples of using \<algorithm>
sorting a vector  
```cpp
void printVec(const vector<int>& vec){
    for(int elem : vec)
        std::cout << elem << std::endl;
} 

int main(){
    vector<int> vec{3, 1, 4, 1, 5};
    std::sort(vec.begin(), vec.end());
    printVec(vec);
}
```
find a value in a set
```cpp
#include<set>
#include<algorithm>
int main(){
    std::set<int> mySet{1, 1, 4, 5, 1, 4};
    auto testIt = std::find(mySet.begin(), mySet.end(), 5);//returns a iterator pointing to the target value
    if (testIt == mySet.end())
        std::cout << "Not found" << std::endl;
    else
        std::cout << "Found: " << *testIt << std::endl;
    return 0;
}
```
print part of a container
```cpp
#include<algorithm>
int main(){
    std::vector vec{3, 1, 4, 6, 2, 5, 9};
    auto iter = std::lower_bound(vec.begin(), vec.end(), 4);//find smallest element >= key
    auto end = std::upper_bound(vec.begin(), vec.end(), 7);//find smallest element > key
    
    for(; iter != end; iter++){
        std::cout << *iter << std::endl;
    }
    return 0;
}
```
## iterator type
- input/output iterators
- forward iterators
- bidirectional
- random access
the type of iterator depends on the type of the container. some functions and algorithms rely on certain type of iterators
### input iterator
for swquentail, single pass input  
read only, only be dereferenced on right of expression
### output iterator
for swquentail, single-pass iterator
write only, can only be dereferenced on left side of expression.
### forward iterator
combines input and output iterators, can make multiple passes, which means if iter a and iter b is same, a++ and b++ are guaranteed to be the same
### bidirectional iterator
everything for forward iterators and capable doing iter--
### random access iterators
most powerful, can increase and decent by arbitrary amounts