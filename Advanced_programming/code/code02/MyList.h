#ifndef MYLIST_H
#define MYLIST_H

class MyList {
private:
    // 节点结构体
    struct Node {
        int value;
        Node* next;
        Node(int v) : value(v), next(nullptr) {}
    };

    Node* head;
    int list_size;
    // 辅助函数
    Node* getNodeAt(int index) const;

public:
    MyList();
    ~MyList();
    MyList(int* ls);

    void insert(int index, int value);
    void remove(int index);
    int get(int index) const;
    void set(int index, int value);
    int size() const;
    void clear();
    int sum_from(int index, int k) const;
    void reverse();
    void merge(MyList& other);
    bool checkPointer();
};

#endif // MYLIST_H
