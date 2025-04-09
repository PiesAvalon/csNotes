#include "SmartPointer.h"

SmartPointer::SmartPointer(const SmartPointer &sptr){
    //TODO
    pointer = sptr.pointer;
    ref_cnt = sptr.ref_cnt;
    if(pointer){
        (*ref_cnt)++;
    }
}

void SmartPointer::assign(const SmartPointer &sptr){
    //TODO
    if(pointer){
        (*ref_cnt)--;

    if((*ref_cnt)==0){
        delete pointer;
    }
    }
    

    ref_cnt = sptr.ref_cnt;
    pointer = sptr.pointer;
    if(pointer){
        (*ref_cnt)++;
    }
}

SmartPointer::~SmartPointer(){
    //TODO
    if(pointer){
        (*ref_cnt)--;
    if((*ref_cnt) == 0){
        delete pointer;
        // std::cout << "deleted malloc" << std::endl;
    }
    }
    //  std::cout << "deleted ptr" << std::endl; 
}