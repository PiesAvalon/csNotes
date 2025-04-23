# Lec16 RAII and Smart Pointers
## RAII
A code path is the route that statements are executed, for a piece of code, there are different code paths. For example:
```cpp
string EvaluateSalaryAndReturnName(int idNumber){
    Employee* e =new Employee(idNumber);
    if (e->Title() == "CEO" || e->Salary() > 100000){
        cout << e->First() << " " << e->Last() << " is overpaid" << endl;
        auto result = e->First() + " " + e->Last();
    }
    delete e;
    return result;
}
```
in this piece of code, there are 20 code pathes, which means it isnot guaranteed to exit at the `return` line, and menmory allocated may not have been freed. 
RAII: resources acqusition is initialization
programmers should makes sure that all resource acqusition is made in the constructor and freeing the resources is in the destructor  
the destructor is always called(even with exceptions), so resources is always freed  
### an example
we should not use this, this code does not follow the RAII rule 
```cpp
ifstream input();
input.open("test.txt");
```
instead, use this, since the ifstream library is RAII-Compliant.
```cpp
ifstream input("test.txt");//immediately initialize when stream created 
```
for files, memory, locks RAII is also done
## smart pointers
now in the industry, people seldom use `new` and `delete`  
instead, they use some "smart" pointers
```cpp
std::unique_ptr;
std::shared_ptr;
std::weak_ptr;
boost::scoped_ptr;
boost::intrusive_ptr;
```