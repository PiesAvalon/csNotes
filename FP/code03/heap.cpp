#include "heap.h"
#include <iostream>

Heap::Heap(size_t _size){
    //TODO
    size = _size;
    head = new MM_Struct();
    int Nodes;
    if(_size % 4 != 0) {
        Nodes = _size / 4;
    }
    else {
        Nodes = _size / 4 + 1;
    }
    nodes = Nodes;
    for(int i = 0; i < Nodes - 1; i++) {
        MM_Struct *p = new MM_Struct();
        p->nxt = head->nxt;
        head->nxt = p;
    }
}
Heap::~Heap() {
    //TODO
    while(head != nullptr) {
        MM_Struct *p = head;
        head = head->nxt;
        delete p;
    }
}
MM_Struct *Heap::Malloc(size_t size) {
    //TODO
    int nodes = size / 4;
    auto p = head;
    while(p){
        auto q = p;
        for(size_t i = 0; i < nodes; i++){
            if(q->locked == true){
                break;
            }
            if(i == nodes - 1){
                q->locked = true;
                q->size = size;
                for(size_t j = 0; j < nodes; j++){
                    q = q->nxt;
                    q->locked = true;
                }
                return q;
            }
            p = p->nxt;
        }
    }


    size = size * 2;
    MM_Struct *r = head;
    while(r->nxt != nullptr){
        r = r->nxt;
    }
    for(size_t i = 0; i < size / 4 - Heap::nodes; i++){
        MM_Struct *p = new MM_Struct();
        r->nxt = p;
        r = p;
    }
    Heap::nodes = size / 4;
    return Malloc(size);
}
void Heap::Free(MM_Struct *p) {
    //TODO
    if(p->locked == false||p == nullptr){
        std::cout << "Segmentation Fault!\n";
        return;
    }
    if(p->locked==true&&p->size== 0){
        std::cout << "Error Free!\n";
        return;
    }
    auto q = p;
    size_t count = 0;
    size_t nodes = p->size / 4;
    for(size_t i = 0;nodes; i++){
        p->locked = false;
        p->size = 0;
        count++;
        if(count == nodes){
            break;
        }
        p = p->nxt;
    }
    //将pq之间的部分移动到链表末尾
    auto r = head;
    while(r->nxt != q){
        r = r->nxt;
    }
    r->nxt = p->nxt;
    p->nxt = nullptr;
    while(r->nxt != nullptr){
        r = r->nxt;
    }
    r->nxt = q;
    return;



}
void Heap::output(MM_Struct *p) {
    //TODO
}
void Heap::setval(MM_Struct *p, int x) {
    //TODO
}

int main(){
    Heap *heap = new Heap(12);
    std::cout << heap->GetTotalSize() << std::endl;
    MM_Struct *p = heap->Malloc(12);
    std::cout << heap->GetTotalSize() << std::endl;
    MM_Struct *q = heap->Malloc(4);
    std::cout << heap->GetTotalSize() << std::endl;
    heap->Free(q);
    std::cout << heap->GetTotalSize() << std::endl;
    heap->Free(q);
    std::cout << heap->GetTotalSize() << std::endl;
    
    delete heap;
}