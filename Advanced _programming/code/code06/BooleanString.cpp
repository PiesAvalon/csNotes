// BooleanString.cpp
#include "BooleanString.h"
#include<cstring>

BooleanString::BooleanString() : len(0), str_p(nullptr){}

BooleanString::BooleanString(const char *s){
    bool isValid = true;
    for(int i = 0; s[i] != '\0'; i++){
        if(s[i] != '0' && s[i] != '1'){
            isValid = false;
            break;
        }
    }
    
    if(isValid){
        len = strlen(s);
        str_p = new char[len+1];
        strcpy(str_p, s);
    }else{
        len = 0;
        str_p = nullptr;
    }
}

BooleanString::BooleanString(const BooleanString &s){
    len = s.len;
    str_p = new char[len+1];
    strcpy(str_p, s.str_p);
}

BooleanString::~BooleanString(){
    if(str_p){
        delete[] str_p;
    }
    // delete[] str_p;
}

void BooleanString::print(){
    if(str_p){
        cout << str_p << endl;
    }
    else{
        cout << endl;
    }
}

BooleanString& BooleanString::operator=(const BooleanString &s) {
    delete[] str_p;
    len = s.len;
    str_p = new char[len+1];
    strcpy(str_p, s.str_p);
    return *this;
}

BooleanString& BooleanString::operator=(const char* s){
    bool isValid = true;
    for(int i = 0; s[i] != '\0'; i++){
        if(s[i] != '0' && s[i] != '1'){
            isValid = false;
            break;
        }
    }
    
    if(isValid){
        delete[] str_p;
        len = strlen(s);
        str_p = new char[len+1];
        strcpy(str_p, s);
    }
    return *this;
}

char& BooleanString::operator[](int index){
    return str_p[index];
}

BooleanString BooleanString::operator+(const BooleanString& A){
    if(!len){
        return A;
    }
    if(!A.len){
        return *this;
    }
    char* new_str = new char[len + A.len + 1];
    strcpy(new_str, str_p);
    strcat(new_str, A.getStr_p());
    BooleanString bs;
    bs.len = len + A.len;
    bs.str_p = new_str;  
    return bs;
}

bool BooleanString::operator==(const BooleanString &A){
    if(len != A.len) return false;
    for(int i = 0; i < len; i++){
        if(str_p[i] != A.getStr_p()[i])
            return false;
    }
    return true;
}

bool BooleanString::operator<(const BooleanString &A){
    len = strlen(str_p);
    int Alen = strlen(A.getStr_p());
    int min_len = len;
    if(Alen < len);
    min_len = len;
    for(int i = 0; i < min_len; i++){
        if(str_p[i] < A.getStr_p()[i])
            return true;
        if(str_p[i] > A.getStr_p()[i])
            return false;
    }
    return len < Alen;
}

BooleanString BooleanString::operator&(const BooleanString &A){
    BooleanString one("1");
    BooleanString zero("0");
    BooleanString result;
    int max_len = len > A.len ? len : A.len;
    for(int i = 0; i < max_len; i++){
        char c1 = i < len ? str_p[i] : '0';
        char c2 = i < A.len ? A.getStr_p()[i] : '0';
        if(c1 == '1' && c2 == '1'){
            result = result + one;
        }
        else{
            result = result + zero;
        }
    }
    return result;
}

BooleanString BooleanString::operator|(const BooleanString &A){
    BooleanString one("1");
    BooleanString zero("0");
    BooleanString result;
    int max_len = len > A.len ? len : A.len;
    for(int i = 0; i < max_len; i++){
        char c1 = i < len ? str_p[i] : '0';
        char c2 = i < A.len ? A.getStr_p()[i] : '0';
        if(c1 == '1' || c2 == '1'){
            result = result + one;
        }
        else{
            result = result + zero;
        }
    }
    return result;
}

BooleanString BooleanString::operator!(){
    BooleanString one("1");
    BooleanString zero("0");
    BooleanString result;
    for(int i = 0; i < len; i++){
        if(str_p[i] == '0'){
            result = result + one;
        }
        else{
            result = result + zero;
        }
    }
    return result;
}
