#include<iostream>
#include<vector>
using namespace std;

template<typename T>
T myMax(T a, T b){
    if(a > b)
        return a;
    else
        return b;
}

int main(){
    int a = 1, b = 3;
    cout << myMax(a, b) << endl;
    double c = 2.1, d = 4.2;
    cout << myMax(c, d) << endl;
    return 0;
}

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

template <typename Collection, typename Datatype>
int countOccurences(const Collection& list, Datatype val){
    int count = 0;
    for(size_t i = 0; i < list.size(); i++){
        if(list[i] == val)
            count++;
    }
    return count;
}

template <typename Collection, typename DataType>
int countOccurences(const Collection& list, DataType val){
    int count = 0;
    for(auto iter = list.begin(); iter != list.end(); ++iter){
        if(*iter == val)
            count++;
    }
    return count;
}

template <typename InputIterator, typename DataType>
int countOccurences(InputIterator begin, InputIterator end, DataType val){
    int count = 0;
    for(auto iter = begin; iter != end; ++iter){
        if(*iter == val)
            ++count;
    }
    return count;
}

template <typename InputIt1, typename InputIt2>
pair<int, int> my_mismatch(InputIt1 first1, InputIt1 last1, InputIt2 first2){
    while(first1 != last1 && *first1 == *first2){
        first1++;
        first2++;
    }
    return {*first1, *first2};
}

int main(){
    vector<int> list{2, 3, 2, 1, 6, 6};
    vector<char> list2{2, 3, 2, 'k'};
    auto [a, b] = my_mismatch(list.begin(), list.end(), list2.begin());
    cout << a << endl << b << endl;
    return 0;
}

template <typename InputIter, typename Predicate>
int myCount(InputIter begin, InputIter end, Predicate predicate){
    int cnt = 0;
    while(begin != end)
    {
        if(predicate(*begin))
            cnt++;
        begin++;
    }
    return cnt;
}

bool is_one(int a){
    return a == 1;
}

int main(){
    vector<int> vecInt{1, 1, 4, 5, 1, 4};
    cout << myCount(vecInt.begin(), vecInt.end(), [](int i){return i == 1;}) << endl;
    return 0;
}

int main(){
    int x = 5, y = 5;
    
    auto foo = [=](){
        //x += 5; this error because x isn't a left value when using capture by value
        cout << x << endl;
    };

    auto bar = [&](){
        y += 5;
        cout << y << endl;
    };

    foo();
    bar();
    cout << x << endl << y << endl;
    return 0;
}                                                                      