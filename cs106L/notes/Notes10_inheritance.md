# Lec15 Inheritance
## Namespaces
the std lib uses common names, it's easy for libs to conflict their names.  
we can create a namespace ourselves:
```cpp
namespace Lecture{
    int count(const std::vector<int>& v){
        int cnt = 0;
        for(auto i : v){
            if(i == 1)
                cnt++;
        }
        return cnt;
    }
}

int main(){
    std::vector<int> v{2, 1, 4, 3, 6, 4, 1, 4};
    std::cout << "manual count: " << Lecture::count(v) << std::endl;
    std::cout << "std count: " << std::count(v.begin(), v.end(), 1) << std::endl;
    return 0;
}
```