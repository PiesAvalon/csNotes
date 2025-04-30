#pragma once
#pragma once
#include<iostream>
using namespace std;

template<typename T1, typename T2>
class MyPair {
public:
    //add member here
    T1 first;
    T2 second;

    MyPair() {
        first = T1();
        second = T2();
    };
    MyPair(const T1& a, const T2& b) {
        first = a;
        second = b;
    };

    bool operator==(const MyPair<T1, T2>& other) const {
        return first == other.first && second == other.second;
    };

};

template<typename T>
class MyVector {
private:
    T* data;
    int sz;
    int capacity;

    void resize(int new_capacity) {
        T* new_data = new T[new_capacity];
        for (int i = 0; i < sz; ++i) {
            new_data[i] = data[i];
        }
        delete[] data;
        data = new_data;
        capacity = new_capacity;
    }; // 动态扩容

public:
    MyVector() {
        sz = 0;
        capacity = 5;
        data = new T[capacity];
    };
    ~MyVector() {
        delete[] data;
    };

    int size() const {
        return sz;
    };
    bool empty() const {
        return sz == 0;
    };

    T& operator[](int index) {
        return data[index];
    };
    const T& operator[](int index) const {
        return data[index];
    };

    void push_back(const T& value) {
        if (sz == capacity) {
            resize(capacity == capacity * 2);
        }
        data[sz] = value;
        sz++;
    };
    void pop_back() {
        if (sz > 0) {
            sz--;
        }
    };
    void clear() {
        sz = 0;
    };
};

// MyMap 类模板（函数待实现）
template<typename K, typename V>
class MyMap {
private:
    MyVector<MyPair<K, V>> data;

public:
    MyMap() {
    };

    void insert(const K& key, const V& value) {
        for (int i = 0; i < data.size(); i++) {
            if (data[i].first == key) {
                data[i].second = value;
                return;
            }
        }
        data.push_back(MyPair<K, V>(key, value));
    };
    int size() const {
        return data.size();
    };
    bool contains(const K& key) const {
        for (int i = 0; i < data.size(); i++) {
            if (data[i].first == key) {
                return true;
            }
        }
        return false;
    };

    V& operator[](const K& key) {
        for (int i = 0; i < data.size(); i++) {
            if (data[i].first == key) {
                return data[i].second;
            }
        }
        data.push_back(MyPair<K, V>(key, V()));
        return data[data.size() - 1].second;
    };
    void erase(const K& key) {
        for (int i = 0; i < data.size(); i++) {
            if (data[i].first == key) {
                data[i] = data[data.size() - 1];
                data.pop_back();
                return;
            }
        }
    };
    void clear() {
        data.clear();
    };

    MyPair<K, V> get(int index) const {
        return data[index];
    };
};

