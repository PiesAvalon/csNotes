# Lec07 Templates
## templates
templates allow us to write generic and reusable code
```cpp
template<typename T>
T myMax(T a, T b){
    if(a > b)
        return a;
    else
        return b;
}
```
allows the function to be used by any types. 
now inplement `getDatatype` which is the template type of `getIteger`
```cpp
int getInteger(const string& prompt)
{
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
}
```
here, because T is only in the ret-type, the compiler can't deduce the type from its arguments. so we must use the \<int> when calling the function.  
## Generic Programming and Lifting
- count how many times 3 appears in a vector\<int>
- count how many times 4.7 appears in a vector\<double>
- ... 'X' ... string 
- ... 'X' ... deque\<char>
- ... 5 ... list\<string>
### concept lifting
looking at the assumptions you placed on the parameters and questioning if they are really neccessary.   
can you solve a more general problem by relaxing the constraints?  
```cpp
template <>
int countOccurences(const vector<int>& list, int val){
    int count = 0;
    for(size_t i = 0; i < list.size(); i++){
        if(list[i] == val)
            count++;
    }
    return count;
}
```
actually this isn't a template function, but take it as an example
```cpp
template <typename Collection, typename Datatype>
int countOccurences(const Collection& list, Datatype val){
    int count = 0;
    for(size_t i = 0; i < list.size(); i++){
        if(list[i] == val)
            count++;
    }
    return count;
}
```
iterators provide a uniform interface
```cpp
template <typename Collection, typename DataType>
int countOccurences(const Collection& list, DataType val){
    int count = 0;
    for(auto iter = list.begin(); iter != list.end(); ++iter){
        if(*iter == val)
            count++;
    }
    return count;
}
```
we assume the least posible iterator:
```cpp
template <typename InputIterator, typename DataType>
int countOccurences(InputIterator begin, InputIterator end, DataType val){
    int count = 0;
    for(auto iter = begin; iter != end; ++iter){
        if(*iter == val)
            ++count;
    }
    return count;
}
```
# Lec08 Templates and Functions
template functions defines an implicit interface that each template parameter must satisfy.
```cpp
template<typename InputIterator>
int foo(InputIterator begin, InputIterator end){
    ...
    auto iter = begin;
    ...
    if(iter == end);
    ...
}
```
here begin and end must be copyable & must be comparable to end   
in C++20 iterfaces are explictly shown.  
## functions and lambdas
a predicata is a function which takes in some number of arguments and returns a boolean
```cpp
template <typename InputIter, typename Predicate>
int myCount(InputIter begin, InputIter end, Predicate predicate){
    int cnt = 0;
    while(begin != end)
    {
        if(predicate(*begin))
            cnt++;
        begin++;
    }
    return cnt;
}

bool is_one(int a){
    return a == 1;
}

int main(){
    vector<int> vecInt{1, 1, 4, 5, 1, 4};
    cout << myCount(vecInt.begin(), vecInt.end(), is_one) << endl;
    return 0;
}
```
### lambda functions
use lambda functions to define functions in a lite way, lambdas are usually used as predicates
```cpp
int main(){
    vector<int> vecInt{1, 1, 4, 5, 1, 4};
    cout << myCount(vecInt.begin(), vecInt.end(), [](int i){return i == 1;}) << endl;
    return 0;
}
```
lambdas can catch functions from their surrounding scope, either by referance of by value
```cpp
int main(){
    int x = 5, y = 5;
    
    auto foo = [=](){//capture be value
        //x += 5; this error because x isn't a left value when using capture by value
        cout << x << endl;
    };

    auto bar = [&](){//capture by referance 
        y += 5;
        cout << y << endl;
    };

    foo();
    bar();
    cout << x << endl << y << endl;//y value changed
    return 0;
}       
```