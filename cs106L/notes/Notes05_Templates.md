# Lec07 Templates
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