//rob.cpp
#include"rob.h"
Rob::Rob(int N) :n(N) {//这个也不要改！！
    n = N;
    courses = new Course[n];
    for (int i = 0; i < n; i++) {
        courses[i].id = c[i].id;
        courses[i].credit=c[i].credit;
        courses[i].lao=c[i].lao;
        courses[i].like=c[i].like;
    }
}
void Rob::sort_course(){
    //TODO
}
void Rob::solution() {
    cout << -1 << endl;
    //sort_course();
    //TODO
}
