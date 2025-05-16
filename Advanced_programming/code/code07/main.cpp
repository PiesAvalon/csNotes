//不要修改这个文件中的内容
#pragma comment(lib, "pthread.lib")
#include <iostream>
#include <thread>
#include <mutex>
#include "thread.h"

#ifndef _REENTRANT
#error "This code requires '-pthread' compiler flag. Please rebuild with '-pthread'."
#endif

int ans,n;
MyAtomic<int> adder(0);
std::mutex mtx;
typedef void (*func)();

void test1(){
    for(int i=1;i<=114514;i++){
        MyLockGuard<std::mutex> lock(mtx);
        n++;
    }
}
void test2(){
    for(int i=1;i<=114514;i++){
        adder.inc();
    }
}
void test3(){
    for(int i=1;i<=114514;i++){
        MyLockGuard<std::mutex> lock(mtx);//实际上这里并不需要加锁，类似于test2与test4
        adder.dec();
    }
}
void test4(){
    for(int i=1;i<=114514;i++){
        adder.inc();
        adder.add(2);
    }
    for(int i=1;i<=114514;i++){
        adder.sub(1);
        adder.dec();
    } 
}
void test5(){
    for(int i=1;i<=114514;i++){
        MyLockGuard<std::mutex> lock(mtx);//去掉这个锁就会出错，可以试一下，然后想想为什么
        adder.set(adder.get()+2);
    }
    for(int i=1;i<=114514;i++){
        MyLockGuard<std::mutex> lock(mtx);
        n++;
    } 
}
func test[5]={test1,test2,test3,test4,test5};

void get_ans1(){
    ans=n;
}
void get_ans2(){
    ans=adder.get();
}
void get_ans3(){
    ans=-1*adder.get();
}
void get_ans4(){
    ans=adder.get();
}
void get_ans5(){
    ans=adder.get()-n;
}
func get_ans[5]={get_ans1,get_ans2,get_ans3,get_ans4,get_ans5};

std::thread th[10];
int main(){
    int opt;//输入opt = 0,1,2,3,4
    std::cin>>opt;
    if(opt<0||opt>=5){
        std::cout<<"Invalid Input"<<std::endl;
        return 0;
    }   
    for(int i=0;i<10;i++){
        th[i]=std::thread(test[opt]);
    }
    for(int i=0;i<10;i++){
        th[i].join();
    }
    get_ans[opt]();
    std::cout<<ans<<std::endl;//输出结果都应是1145140
    return 0;
}
