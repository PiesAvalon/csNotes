# Lec16 RAII and Smart Pointers
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
