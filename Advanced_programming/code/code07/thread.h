#ifndef _THREAD_H_
#define _THREAD_H_

#include <thread>
#include <mutex>

template <typename T>
class MyLockGuard{//自定义锁类，能有效防止你忘掉unlock导致程序卡死在莫名其妙的地方
private:
    T &mtx;
public:
    MyLockGuard(T &m);//在构造时自动上锁
    ~MyLockGuard();//在析构时自动解锁
};

template <typename T>
class MyAtomic//自定义原子类，能有效防止你忘掉锁导致数据竞争
{
private:
    T value;
    mutable std::mutex mtx;// 互斥锁，保护value的访问
public:
    MyAtomic(T initialValue = 0);// 构造函数，初始化value
    ~MyAtomic();// 析构函数
    T get() const;// 获取当前值
    void set(T newValue);// 设置新值
    T inc();// 自增1
    T dec();// 自减1
    T add(T amount);// 增加指定值
    T sub(T amount);// 减少指定值
};

//TODO
template <typename T>   
MyLockGuard<T>::MyLockGuard(T &m) : mtx(m) {
    mtx.lock();
}

template <typename T>
MyLockGuard<T>::~MyLockGuard() {
    mtx.unlock();
}

template <typename T>
MyAtomic<T>::MyAtomic(T initialValue) : value(initialValue) {
}

template <typename T>
MyAtomic<T>::~MyAtomic() {
}

template <typename T>
T MyAtomic<T>::get() const{
    MyLockGuard<std::mutex> lock(mtx);
    return value;
}

template<typename T>
void MyAtomic<T>::set(T newvalue){
    MyLockGuard<std::mutex> lock(mtx);
    value = newvalue;
}

template<typename T>
T MyAtomic<T>::inc(){
    MyLockGuard<std::mutex> lock(mtx);
    return ++value;
}

template<typename T>
T MyAtomic<T>::dec(){
    MyLockGuard<std::mutex> lock(mtx);
    return --value;
}

template<typename T>
T MyAtomic<T>::add(T amount){
    MyLockGuard<std::mutex> lock(mtx);
    return value += amount;
}

template<typename T>
T MyAtomic<T>::sub(T amount){
    MyLockGuard<std::mutex> lock(mtx);
    return value -= amount;
}

#endif