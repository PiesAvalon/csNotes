// #include<iostream>
// #include<vector>
// #include<algorithm>

// namespace Lecture{
//     int count(const std::vector<int>& v){
//         int cnt = 0;
//         for(auto i : v){
//             if(i == 1)
//                 cnt++;
//         }
//         return cnt;
//     }
// }

// int main(){
//     std::vector<int> v{2, 1, 4, 3, 6, 4, 1, 4};
//     std::cout << "manual count: " << Lecture::count(v) << std::endl;
//     std::cout << "std count: " << std::count(v.begin(), v.end(), 1) << std::endl;
//     return 0;
// }

// #include<iostream>

// using std::cout;    using std::endl;

// class Drink{
// public:
//     Drink() = default;
//     Drink(std::string flavor) : _flavor(flavor) {}

//     virtual void make() = 0;
//     virtual ~Drink() = default;

// private:
//     std::string _flavor;
// };

// class Tea : public Drink{
// public:
//     Tea() = default;

//     Tea(std::string flavor) : Drink(flavor) {}
//     virtual ~Tea() = default;

//     void make(){
//         cout << "Made tea from the Tea class! " << endl;
//     }
// };

// int main(){
//     Tea t("red");
//     t.make();

//     return 0;
// }

// #include<iostream>
// #include<vector>
// #include<algorithm>
// #include<sstream>

// using std::vector;

// template<class T, class Container = vector<int>>
// class Priority_Q{
// public:
//     Priority_Q() = default;
//     ~Priority_Q() = default;

//     T top() const {
//         if(_heap.empty()) {}//throw error.
//         return _heap[0];
//     }

//     void pop(){
//         if(!_heap.empty()){
//             std::pop_heap(_heap.begin(), _heap.end());
//             _heap.pop_back();
//             _count--;
//         }
//     }

//     void push(T val){
//         _heap.push_back(val);
//         std::push_heap(_heap.begin(), _heap.end());
//         _count++;
//     }

//     friend std::ostream& operator<<(std::ostream& os, Priority_Q q){
//         os << "{ ";
//         for(int i = 0; i < q._count; i++){
//             os << q._heap[i][0] << " ";
//         }
//         os << "}";
//         return os;
//     }

// private:
//     int _count;
//     vector<T> _heap;

// };

// int main(){
//     Priority_Q<vector<int>, vector<vector<int>>> pq;
//     pq.push({1});
//     pq.push({2});
//     pq.push({10});
//     std::cout << pq;
// }

#include<iostream>
#include<vector>

template<typename It, typename Type>
requires std::input_iterator<It>
int countOccurences(It begin, It end, Type val){
    int cnt = 0;
    auto it = begin;
    while(it != end){
        if(*it == val)
            cnt++;
        it++;
    }
    return cnt;
}



int main(){
    Code a;
    std::vector<int> v{2, 1, 2, 3, 2, 4, 2, 5, 54};
    std::cout << countOccurences(v.begin(), v.end(), 2) << std::endl;
    return 0;
}

