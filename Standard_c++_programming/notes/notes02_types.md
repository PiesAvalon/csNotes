# Lec03 types and advanced streams
## implementing smipio
why? because cin has bad features:
- cin reads the entire line into the buffer butextracts whitespace-separated tokens.
- Trash in the buffer will make cin not prompt the user for input at the right time.
- When cin fails, all future cin operations fail too。

`getline` allows us to read the entire line, up to the `\n` or to the end of the buffer, it reads from a stream to a string. 
**getline consumes the \n character at the last of the prompt but not the one in front of the prompt**.
so mix using `>>` with `getline` is not recommended.

```cpp
string str;
getline(cin, str);
```
get line takes in a stream and a string(a referance type) and returns the stream, which can be inplicitly converted into a boolean value to show if the getline succeded.

now implement a `getInteger`that takes in a line and return the interger
```cpp
int getInteger(const string& prompt)
{
    while(true)
    {
        cout << prompt << endl;
        string line;
        if(!getline(cin, line))
            throw domain_error("...");
        int result;
        char trash;
        istringstream iss(line);
        if(iss >> result && !(iss >> trash))
            return result;
        cout << "invalid input, please input again!" << endl;
    }
}
```
mix using `>>` and `getline` is not recommended:
```cpp
istringstream iss;
double val;
string str;
iss >> val;
iss.ignore();//ignores the next character
getline(iss, str);
```
## exercise
```cpp
// Write the following function which prompts
// the user for a filename, opens the ifstream to
// the file, reprompt if the filename is not valid
// and then return the filename.
string promptUserForFile(ifstream& stream,
                         string prompt = "",
                         string reprompt = ""){
// your implementation here
}
```
## modern c++ types
ints can be signed or unsigned. use type `size_t` to declare a unsigned int variable. 
```cpp
string str = "hello"
for(size_t i = 0; i < 5; i++)
    cout << str[i] << endl;
```
if using int in for loops(accessing index), try size_t
```cpp
string chop_both_ends(const string& str){
    string result = "";
    for(size_t i = 1; i < str.size() - 1; i++)
        result += str[i];
    return result;
}
```
this code will bug if len(str) == 0, since the return value of string.size() is `size_t`, it can't be set to -1.
## type aliases
allow you to give a long type name a short name.
```cpp
using map iterator = std::unordered map<forward list<Student>unordered set>::const iterator;
```
## auto types
conpiler determines the type of the variable being defined
```cpp
int i = 1;
auto j = i;//j is int type
```
- when you don't care the type(using iterators)
- when its type is clear
- lambdas

ussually, the return type of a function shouldn't be auto.

## struct type
used to return grouped infomation
```cpp
struct Student{
    string name;
    string state;
    int age;
}

Student s = {"s", "CA", "21"}
```
## pair/tuple type
### pairs
pairs allow you to put to differsnt type data together. they are in the <utility> library, and you can use auto type for a pair. 
```cpp
pair<int string> person = make_pair(20, "Jack") 
```
between functions, pairs are passed by value, which means that the function woundn't change the data in the pair.
```cpp
pair<int, string> grow(pair<int, string> person){
    person.first++;
    return person;
}
```
it can also be passed be referance
```cpp
pair<int, string> grow(pair<int, string>& person);
```
usually, `cosnt` + referance is a faster way to pass a pair.
```cpp
pair<int, string> grow(const pair<int, string>& person);
```
we can use `auto` to create a pair when initalized
```cpp
auto person = make_pair(20， "Jack");
```
### tuples
tupes are somewhat like pairs, but there can be more than two elements inside a tuple.
tuples are in the header file `tuple`:
```cpp
#include<tuple>
```
#### initialization
use make_tuple() to init a tuple
```cpp
std::tuple<int, string, sting> person = std::make_tuple(20, "Jack", "CA");
```
we can also use a auto type for a tuple
```cpp
auto person = std::make_tuple(20, "jack", "CA");
```
#### accessing elements
use the `std::get`function and the index of the element to access an element in a tuple
```cpp
auto name = std::get<1>(person);
std::cout << name << std::endl;
```
#### other features
unpacking, size, swapping, comparing...
### structured bindings
structured bindings allow us to unpack tuple-like data. this is a feature in C++17 and later.
```cpp
tuple<int, char> foo(){
    return 1, 'a';
}

auto [a, b] = foo();
```
### example
```cpp
pair<int,int> findPriceRange(int dist){
    int min = static_cast<int>(dist *0.08 + 100);
    int max = static_cast<int>(dist *0.36 + 750);//converting in cpp
    return {min,max};//uniform initialization, used for pairs and tuples
}
int main(){
    int dist = 6452;
    auto [min,max] = findPriceRange(dist);
    cout << "You can find prices between" << min << "and"<< max;
}
```
## initialization(uniform initalization)
put values in braces.
```cpp
vector<int> vec{3, 1, 2, 5};//this is called a initializer list
Course now{"CS106L", {15, 30}, {16, 30}};
```
 we don't have to specify the types, they are automatcally deduced.

 mind the difference of uniform initalization and null initialization
 ```cpp
vector<int> vec1{3};//vec1 = {3}
vector<int> vec2(3);//vex2 = {0, 0, 0} 
 ```