#ifndef HEAP_H
#define HEAP_H
#include <cstddef>

struct MM_Struct {
    bool locked;
    size_t size; //如果是一段连续分配内存的开头，就保存这段连续内存区域的大小。
    int val;
    MM_Struct *nxt;
    MM_Struct() {
        locked = false;
        val = 0;
        nxt = nullptr;
    }
}; // 表示一个4字节内存单元

class Heap {
private:
    MM_Struct *head;
    size_t size; // 当堆区大小不够时，需要将大小变为原来的两倍
    size_t nodes; // 当前堆区中的节点数
    //你可以添加其他的私有函数
public:
    Heap(size_t _size);
    ~Heap();
    size_t GetTotalSize() {return size;}
    MM_Struct *Malloc(size_t size);
    void Free(MM_Struct *p);
    void output(MM_Struct *p);
    void setval(MM_Struct *p, int x);
};

#endif