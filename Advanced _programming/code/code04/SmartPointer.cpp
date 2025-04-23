#include "SmartPointer.h"

SmartPointer::SmartPointer(const SmartPointer &sptr){
    //TODO
    pointer = sptr.pointer;
    ref_cnt = sptr.ref_cnt;
    if(pointer && (*ref_cnt) > 0){
        (*ref_cnt)++;
    }
}

void SmartPointer::assign(const SmartPointer &sptr){
    //TODO
    if(this->pointer == sptr.pointer)
        return;
    if(pointer){
        (*ref_cnt)--;

    if((*ref_cnt) == 0){
        delete pointer;
        pointer = nullptr;
    }
    }

    ref_cnt = sptr.ref_cnt;
    pointer = sptr.pointer;


    if(pointer && (*ref_cnt) > 0){
        (*ref_cnt)++;
    }
}

SmartPointer::~SmartPointer(){
    //TODO
    if(pointer){
        (*ref_cnt)--;
    if((*ref_cnt) == 0){
        delete pointer;
        pointer = nullptr;
        // std::cout << "deleted malloc" << std::endl;
    }
    }
    //  std::cout << "deleted ptr" << std::endl; 
}