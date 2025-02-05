#include<iostream>
#include<map>
#include<string>
#include<vector>

int main(){
    std::map<int, std::string> myMap;
    myMap[0] = "zero";//add pair to a map

    std::string a = myMap[0];
    std::string b = myMap[1];//creates a key and initialize it
    std::cout << a <<std::endl;
    std::cout << b << std::endl;
    // std::string c = myMap.at(2);//this will error

    if(myMap.find(1) != myMap.end())//if doesn't exist, find will return a iterator repersenting the position one past the last element in the map
        std::cout << "1 exist in map" << std::endl;
    
    if(myMap.find(10) == myMap.end())
        std::cout << "10 doesn't exist in map" << std::endl;

    if(myMap.count(0))//count returns 0 or 1 depending on whether exist in map
        std::cout << "0 exist in map" << std::endl;

    return 0;
}

int main(){
    std::vector<int> intVec{0, 1, 2, 30};
    std::vector<int>::iterator it{intVec.begin()};

    while(it != intVec.end()){
        std::cout << *it << std::endl;
        std::cout << &(*it) << std::endl;
        it++;
    }
    return 0;
}

int main(){
    std::map<int, std::string> myMap;
    myMap.insert({0, "zero"});
    myMap.insert({1, "one"});
    std::map<int, std::string>::iterator iter = myMap.begin();
    while(iter != myMap.end()){
        std::cout << (*iter).first << (*iter).second << std::endl;
        //(*iter).first is same to iter->first
        iter++;
    }
    for(std::pair<int, std::string> elem : myMap){
        std::cout << elem.first << elem.second << std::endl;
    }
    for(auto [key, value] : myMap){
        std::cout << key << value << std::endl;
    }
    return 0; 
}

#include<algorithm>
using std::vector;

void printVec(const vector<int>& vec){
    for(int elem : vec)
        std::cout << elem << std::endl;
} 

int main(){
    vector<int> vec{3, 1, 4, 1, 5};
    std::sort(vec.begin(), vec.end());
    printVec(vec);
}

#include<set>
#include<algorithm>
int main(){
    std::set<int> mySet{1, 1, 4, 5, 1, 4};
    auto testIt = std::find(mySet.begin(), mySet.end(), 5);
    if (testIt == mySet.end())
        std::cout << "Not found" << std::endl;
    else
        std::cout << "Found: " << *testIt << std::endl;
    return 0;
}

#include<algorithm>
int main(){
    std::vector vec{3, 1, 4, 6, 2, 5, 9};
    auto iter = std::lower_bound(vec.begin(), vec.end(), 4);//find smallest element >= key
    auto end = std::upper_bound(vec.begin(), vec.end(), 7);//find smallest element > key
    
    for(; iter != end; iter++){
        std::cout << *iter << std::endl;
    }
    return 0;
}