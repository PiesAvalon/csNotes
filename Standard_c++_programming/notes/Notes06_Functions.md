# Lec09 Functions and Algorithms
## functions and lambdas
problem 1: we wanted to use some upper limit other than 5  
one way to deal with this, make a template that returns a function:
```cpp
template <typename Iter, typename Predicate>
int countOccurances(Iter begin, Iter end, Predicate predicate){
    int cnt = 0;
    while(begin != end){
        if(predicate(*begin))
            cnt++;
        begin++;
    }
    return cnt;
}

bool isLessThan5(int val){
    return val < 5;
}

template <typename DataType>
auto isLessThanLimit(DataType limit){
    return [=](auto val){return val < limit;};
}

int main(){
    vector<int> list{1, 1, 4, 5, 1, 4, 1, 9, 1, 9, 8, 1, 0};
    cout << countOccurances(list.begin(), list.end(), isLessThanLimit(2)) << endl;
    return 0;
}
```
or use a lambda inside main:
```cpp
int main(){
    vector<int> list{1, 1, 4, 5, 1, 4, 1, 9, 1, 9, 8, 1, 0};
    int limit = 2;
    auto isLessThanLimit = [=](auto val){return val < limit;};
    cout << countOccurances(list.begin(), list.end(), isLessThanLimit) << endl;
    return 0;
}
```
## algorithms
### sort(std::sort)
to sort elements in none decent order
```cpp
std::sort(vec.begin(), vec.end());
```
sorting an array
```cpp
std::sort(arr, arr + n);
```
we can also pass the "greater" function
```cpp
std::sort(list.begin(), list.end(), std::greater<int>());
```
or cuntomize a "greater" function
```cpp
struct Person{
    std::string name;
    int age;
};

bool greater(const Person& p1, const Person& p2){
    return p1.age > p2.age;
}
```
lambdas are also fine
```cpp
sort(list.begin(), list.end(), [](Person& s1, Person& s2){return s1.name.size() < s2.name.size();});
```
### nth_element(std::nth_element)
this is like the first step of quicksort, to find the nth largest element in a container
```cpp
std::nth_element(list.begin(), list.begin() + 2 - 1, list.end(), [](Person& p1, Person& p2){return p1.age < p2.age;});
```
### std::stable_partition
does a partition while keeping the relative sequence
```cpp
std::stable_partition(list.begin(), list.end(), [](Person& p){return p.age % 2 == 0;});
```
### std::copy_if
syntax
```cpp
std::copy_if(first, last, dest_first, pred);
```
the dest_first should be a speacial iterator that can extend the container, made by back_inserter()
```cpp
std::copy_if(vec.begin(), vec.end(), std::back_inserter(v2), [](int a){return a >= 3;});
```
we can also copy a container to a stream, using std::ostream_iterator. this is in the \<iterator> headers file
```cpp
std::copy_if(vec.begin(), vec.end(), std::ostream_iterator<int>(std::cout, "\n"), [](int a){return true;});
```
### std::remove_if
rearange the cotainer, and erase the elements behind
```cpp
auto new_end = std::remove_if(list.begin(), list.end(), [](Person& p){return p.age > 20; });//arrange the elements so that the removed ones goes to the back
list.erase(new_end, list.end());//erase the elements in the back
```
inplement the logic of remove from before
```cpp
template<typename ForwardIt, typename UniPred>
auto my_remove_if(ForwardIt first, ForwardIt last, UniPred pred){
    auto not_pred = [pred](auto x) { return !pred(x);};
    std::stable_partition(first, last, not_pred);
    int cnt = std::count_if(first, last, not_pred);
    return first + cnt;
}
```
### std::transform
same as map in python, takes in a range, a destination and a function or lambda 
```cpp
std::transform(numbers.begin(), numbers.end(), numbers.begin(), [](int n) { return n * n; });
```
### std::search
searches a container inside a container and returns the first found iterator