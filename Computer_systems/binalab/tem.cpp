char seek(char* p1, char* p2, int p3) {
    if(p3 <= 1){
        return *p2;
    }
    if(*p1 == 41){
        return seek(p1 + 1, p2, p3 / 2);
    }
    if(*p1 == 52){
        return seek(p1 + 1, p2 + p3 / 2, p3 / 2);
    }
    if(*p1 == 0){
        return 0;
    }
    return seek(p1 + 1, p2, p3);
}