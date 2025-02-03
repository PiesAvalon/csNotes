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
- when you don't care the type
- when its type is clear
- lambdas

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
## pair type
