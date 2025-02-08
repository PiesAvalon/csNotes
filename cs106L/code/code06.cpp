#include<iostream>
#include<vector>
#include<algorithm>
#include<iterator>


// template <typename Iter, typename Predicate>
// int countOccurances(Iter begin, Iter end, Predicate predicate){
//     int cnt = 0;
//     while(begin != end){
//         if(predicate(*begin))
//             cnt++;
//         begin++;
//     }
//     return cnt;
// }


// int main(){
//     std::vector<int> list{1, 1, 4, 5, 1, 4, 1, 9, 1, 9, 8, 1, 0};
//     // auto isLessThanLimit = [limit = 1](auto val){return val < limit;};
//     // cout << countOccurances(list.begin(), list.end(), isLessThanLimit) << endl;

//     std::sort(list.begin(), list.end(), std::greater<int>());

//     for(int ele : list){
//         std::cout << ele << " ";
//     }
//     std::cout << std::endl;
//     return 0;
// }

struct Person{
    std::string name;
    int age;
};

bool greater(const Person& p1, const Person& p2){
    return p1.age > p2.age;
}

template<typename ForwardIt, typename UniPred>
auto my_remove_if(ForwardIt first, ForwardIt last, UniPred pred){
    auto not_pred = [pred](auto x) { return !pred(x);};
    std::stable_partition(first, last, not_pred);
    int cnt = std::count_if(first, last, not_pred);
    return first + cnt;
}


int main(){
    std::vector<Person> list{{"aaa", 11}, {"bbbbbb", 33}, {"dddd", 22}, {"eeeeee", 31}, {"qqqqq", 25} };
    sort(list.begin(), list.end(), greater);

    for(Person ele : list){
        std::cout << ele.age << "  " << ele.name << std::endl;
    }

    sort(list.begin(), list.end(), [](Person& s1, Person& s2){return s1.name.size() < s2.name.size();});

    for(Person ele : list){
        std::cout << ele.age << "  " << ele.name << std::endl;
    }

    std::nth_element(list.begin(), list.begin() + 2 - 1, list.end(), [](Person& p1, Person& p2){return p1.age < p2.age;});
    std::cout << list[1].age << std::endl;

    std::stable_partition(list.begin(), list.end(), [](Person& p){return p.age % 2 == 0;});
    for(Person elem : list){
        std::cout << elem.age << elem.name << std::endl;
    }

    std::cout << std::endl;

    std::vector<int> vec{2, 1, 3, 4};
    std::vector<int> v2;
    std::copy_if(vec.begin(), vec.end(), std::back_inserter(v2), [](int a){return a >= 3;});

    for(int i : v2){
        std::cout << i;
    }
    std::cout << std::endl;

    std::copy_if(vec.begin(), vec.end(), std::ostream_iterator<int>(std::cout, "\n"), [](int a){return true;});

    std::cout << std::endl;

    auto new_end = my_remove_if(list.begin(), list.end(), [](Person& p){return p.age > 20; });
    list.erase(new_end, list.end());

    for(Person p : list){
        std::cout << p.name << p.age << std::endl;
    }
    return 0;
}