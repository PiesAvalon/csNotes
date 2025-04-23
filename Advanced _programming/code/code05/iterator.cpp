class MyArray {
    int* arr;
    int size;
public:
    class Iterator {
        int* p;
        MyArray* outer;
    public:
        Iterator();
        ~Iterator();
        bool get(int& value) const;
        bool put(int value);
        friend MyArray;

        Iterator& operator++();
        Iterator operator++(int);
        Iterator& operator--();
        Iterator operator--(int);
        bool operator==(const Iterator&);
        bool operator!=(const Iterator&);
        Iterator operator+(int len);
        Iterator operator-(int len);
    };

public:
    MyArray(int sz);
    ~MyArray();
    Iterator begin();
    Iterator end();

};

MyArray::MyArray(int sz) {
    arr = new int[sz];
    size = sz;
    for (MyArray::Iterator iter = this->begin(); iter != this->end(); iter++) {
        iter.put(0);
    }
}

MyArray::~MyArray() {
    delete[] arr;//用delete[]
    arr = nullptr;
}

MyArray::Iterator MyArray::begin() {
    MyArray::Iterator iter;
    iter.outer = this;
    iter.p = arr;
    return iter;
}

MyArray::Iterator MyArray::end() {
    Iterator iter;
    iter.outer = this;
    iter.p = arr + size;
    return iter;
}

bool MyArray::Iterator::get(int& value) const{
    if (!outer) {
        return false;
    }
    if (p >= outer->arr && p < outer->arr + outer->size) {
        value = *p;
        return true;
    }
    return false;
}

bool MyArray::Iterator::put(int value) {
    if (!outer) {
        return false;
    }
    if (p >= outer->arr && p < outer->arr + outer->size) {
        *p = value;
        return true;
    }
    return false;
}

MyArray::Iterator::Iterator() : p(nullptr), outer(nullptr){
}

MyArray::Iterator::~Iterator() {
}

MyArray::Iterator& MyArray::Iterator::operator++() {
    p++;
    return *this;
}

MyArray::Iterator MyArray::Iterator::operator++(int) {//这个类型一定是值不是引用！
    auto temp = *this;
    p++;
    return temp;
}

MyArray::Iterator& MyArray::Iterator::operator--() {
    p--;
    return *this;
}

MyArray::Iterator MyArray::Iterator::operator--(int) {
    auto temp = *this;
    p--;
    return temp;
}

bool MyArray::Iterator::operator==(const Iterator& other) {
    return p == other.p;
}

bool MyArray::Iterator::operator!=(const Iterator& other) {
    return p != other.p;
}

MyArray::Iterator MyArray::Iterator::operator+(int len) {//这个也是值不是引用！
    auto tem = *this;
    tem.p += len;
    return tem;
}

MyArray::Iterator MyArray::Iterator::operator-(int len) {
    auto tem = *this;
    tem.p -= len;
    return tem;
}