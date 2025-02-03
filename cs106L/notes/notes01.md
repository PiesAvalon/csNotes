# Lec01 itro
std C++17 is used for this course.

note that there is revolutionary changes in the language in C++11 and C++20
### key goals of cs 106l
- learn what features there are out there in C++ and why do they exits
- become comfortable with reading c++ documentation(not beginner friendly)
- become familiar with the design philosiphy of mordern c++
- **NOT** memorize the syntax of c++

# Lec02 streams
## what is a string in C++
```cpp
string str = "hello world";//creates a string object
str[1] = 'h';//c++ strings is a string object, instead of a char* type data
string str = "hello world";
char cstr[] = "hello world";
str[0] = 'a';
cstr[0] = 'a';
```

## what is the use of streams?
### how is some objects printed into the console
- convert data into streams
- write streams to thw console(the hard part)
### how to read from a file
- read a string(the hard part )
- convert string to other data types
  
the stream provides a unified interface for everything above. we can just treat the stream like a buffer of characters.
use the output and input operator `<<` `>>`to interact with the stream.

## stringstreams
### output stringgstream.
```cpp
#include<sstream>//this is requiered
```

you can write to the output stringstream, but can't read from it.
```cpp
ostringstream oss("green-tea");
cout << oss.str() << endl;//oss.str() "dumps" whatever in the stream into a sting.
//cout is also a stream. 
oss << "13.9";
cout << oss.str() << endl;//same length, overwrite
```
for a stream, there is a positional pointer that determines where it is read and written. it is inited to the first character. 

you can use ate(at-end) to make the pointer begin at the end of the stream
```cpp
ostringstream oss("green-tea", ostringstream::ate);
oss << "13.9";//13.9 will be added at the end after green-tea
```

### input stringstream.
takes the input and converts into corrosponding datatypes.
```cpp
istringstream iss("13.6 Ounces");

double amount;
string unit;

iss >> amount;//does the convertion
iss >> unit;
```
the readin stops at a whitespace(space \t \n) or until it doesn't make sense

if `<<` and `>>` are chained, operations is done from left to right.
these operators return the stream itself, which is the reason why it is possible to be chained.

### stringstream

use`std::stringstream`to construct a regular stringstream. this can be read and written.

method `ss.str("hello")` can be used to init stream to a single string.

## stringstream positioning functions
get position: oss.tellp() iss.tellg()
set position: oss.seekp(pos) iss.seekg(pos)

p and g means the put position and the get position. in a stream, the write and read positions are different. 

the tell functions return a `std::streampos` type data(using int is fine), which can be used in `cout` and seekp.
```cpp
std::stringstream ss("hello");
std::streampos pos = ss.tellp();
std::cout << "the write postion is " << pos << std::endl;
pos = ss.tellg();
std::cout << "the read postion is" << pos << std::endl;
```

the seek functions sets the position. 
```cpp
std::stringstream ss("hello");
int pos = 3;
ss.seekp(pos);
ss << "bb";
std::cout << ss.str() << std::endl;
```
`std::sreamoff` is a datatype to represent the distance in a stream, it has the range of long long. while `std::pos` is a dataype to represent the absolute position in a stream. for functions of pointers in streams(`tellg()` etc.), using `std::streamoff type data is more safe than using int.
```cpp
std::stringstream ss("hello");
std::streamoff off = 3;
std::cout << ss.tellg() << std::endl;
ss.seekg(off);
std::cout << ss.tellg() << std::endl;
std::string str;//#include<string>
ss >> str;
std::cout << str << std::endl;
```
### string to int function
inplement a function `stringToInteger` that takes a string and returns a integer(using input stringstream is fine):
```cpp
int stringToIntegerTest(const std::string& str)
{
    std::stringstream ss;
    ss << str;
    int i;
    ss >> i;
    return i;
}
```
we use const and reference type(&) to ensure type safty and speed.
## state bits
all streams have state bits:
good: everything works fine
fail: some error occured and the stream is freezed
eof: "end of file" indicates stream reached the end(only occur when try to read past the end)
bad: a serious error occured on a stream
```cpp
int main() {
    std::stringstream ss;
    ss << "hello";
    printStateBit(ss);//good
    std::string str;
    ss >> str;
    printStateBit(ss);//Eof
    ss.tellg();
    ss.tellp();
    printStateBit(ss);//fail EoF
    return 0;
}

void printStateBit(const std::stringstream& ss)
{
    if(ss.good())
        std::cout << "good" << std::endl;
    if(ss.bad())
        std::cout << "bad" << std::endl;
    if(ss.fail())
        std::cout << "fail" << std::endl;
    if(ss.eof())
        std::cout << "EoF" << std::endl;
    std::cout << "----------------------" << std::endl;
}
```
now, we can implement a stringtoint that may handle errors. the key point is when we read while the eof is on, an error appears and the fail is turned on:
```cpp
int stringToInteger(const std::string& str)
{
    std::stringstream ss;
    ss << str;
    int i;
    ss >> i;
    if (ss.fail()) throw std::domain_error("no valid int at beginning!");
    if(!ss.eof()) throw std::domain_error("int too long!");
    char r;
    ss >> r;
    if(!ss.fail()) throw std::domain_error("more than a single valid int!");
    std::cout << i << std::endl;
    return i;
}
```
## buffered stream
some streams have buffers, they store data before the stream is read. for example, the `cout` stream doesn't shows everything in the concole immedietly.
```cpp
cout << "cs";
mindlesswork();//takes for about 3 seconds
cout << "106";//"cs106" appears in the console together

cerr << "cs";
mindlesswork();
cerr << "106";//"cs106" appears seperately, since cerr does't have a buffer
```
## manipulators
special key words that changes the behaviour of streams if they are inserted into the stream

- endl: generates a new line
- ws(used for output): skips blank spaces
- boolarpha
- hex
- setpercision(used with fix)
```cpp
cout << "aa" << endl;

string str = "/n /t hello";
cout << ws;
cout << str;

```
this part is left blank, for further search.
## cin & cout
### cin
cin is similar to an input stringstream, but when it's eof is on, it waits for the user to type something into the console.

cin consumes the leading whitespace, and reads to the next whitespace but doesn't consume this whitespace(this will be consumed next time cin is called). 

when cin gets a unaproprite data, the fail flag is turned on:
```c++
int a;
cin >> a;//type "hello"
if(cin.fail())
    cout << "fail" << endl;//get fail
```
when cin is failed, it will fail for the rest of the programm. 
### keys
- When does the program prompt the user for input?
- Why does the cout operation not immediately print the outputonto the console? When is the output printed?
- Does the position pointer skip whitespace before the token orafter the token with each >> operation?(this is important!)
- Does the position pointer always read up to a whitespace? If not, come up with a counterexample.
## exercise
```cpp
// Given a start time and a duration,
// calculate the end time.
// Assume correct formatting of string.
input string:"1:30 PM \n 1 hour 20 minute"
console string:"2:50 PM"
void printEndTime(const string& input){
// you fill this out!
}
```
solution
```cpp
void printEndTime(const std::string& input){
    std::stringstream ss;
    ss << input;
    int hour, minute, add_hour, add_minute;
    char c;
    char pa;
    std::string str;
    ss >> hour >> c >> minute >> pa >>str >> add_hour >> str >> add_minute;
    minute += add_minute;
    if(minute >= 60){
        hour++;
        minute %= 60;
    }
    hour += add_hour;
    std::cout << hour << ":" << minute << " " << pa << 'M' << std::endl;
}
```
streams will read character until any whitespace including spaces \n and \t