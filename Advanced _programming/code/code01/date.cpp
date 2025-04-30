#include "date.h"
#include <stdexcept>
#include <iostream>
using namespace std;


// 构造函数
Date::Date(int y, int m, int d) : year(y), month(m), day(d) {
    if (!isValidDate()) {
        //throw invalid_argument("Invalid date input.");
        //这个不用抛出错误
        //因为我们希望看到某些异常日期测试用例对应的“-1”输出
        // cout << -1<< endl;
    }
}

// 判断日期是否合法
bool Date::isValidDate() const {
    //TODO
    if(year < 1 || month < 1 || month > 12 || day < 1 || day > daysInMonth(month, year))
        return false;
    //这个函数需要被其他函数使用
    //未发生的日期也属于正常输入
    return true;
}

// 判断是否是闰年
bool Date::isLeapYear(int y) const {
    //TODO
    if(y % 4 == 0 && y % 100 != 0 || y % 400 == 0)
        return true;
    else
        return false;
}

// 返回该月的天数
int Date::daysInMonth(int m, int y) const {
    //TODO
    if(m == 2)
    {
        if(isLeapYear(y))
            return 29;
        else
            return 28;
    }
    else if(m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
        return 31;
    else if(m == 4 || m == 6 || m == 9 || m == 11)
        return 30;
    else
        return 0;
    //错误返回0
}

// 计算从公元1年1月1日到当前日期的天数
int Date::daysSinceEpoch() const {
    int totalDays = 0;
    // TODO: 计算当前年份中到当前日期的天数
    for(int i = 1; i < year; i++){
        for(int j = 1; j < 13; j++){
            totalDays += daysInMonth(j, i);
        }
    }
    for(int i = 1; i < month; i++){
        totalDays += daysInMonth(i, year);
    }
    for(int i = 1; i <= day; i++){
        totalDays += 1;
    }
    
    // return totalDays;
    //如果非法，返回-1
    if(!isValidDate())
        return -1;
    return totalDays;
}

// 计算从某个日期到另一个日期的天数差
int Date::calculateDaysBetween(const Date &other) const {
    //TODO
    int result = - daysSinceEpoch() + other.daysSinceEpoch();
    if(result < 0)
        result = -result;
    //如果任意一个日期非法，返回-1
    if(!isValidDate() || !other.isValidDate())
        return -1;
    return result;
}

// 显示日期
void Date::display() const {
    //TODO：按照yyyy-mm-dd格式输出,加一个换行
    if(!isValidDate()){
        cout << -1 << endl;
        return;
    }
    //
    //如：cout<<2019-06-01<<endl;
    cout << year << "-";
    if(month < 10)
        cout << "0";
    cout << month << "-" ;
    if(day < 10)
        cout << "0";
    cout << day << endl; 
    //如果非法，输出-1
    
}


// int main() {
//     try {
//         int y1, m1, d1, y2, m2, d2;
//         // 输入第一个日期
//         cin >> y1 >> m1 >> d1;
//         // 输入第二个日期
//         cin >> y2 >> m2 >> d2;
//         // 创建两个 Date 对象
//         Date date1(y1, m1, d1);
//         Date date2(y2, m2, d2);
//         // 显示两个日期
//         date1.display();
//         date2.display();
//         // 计算并输出日期差
//         int diff = date1.calculateDaysBetween(date2);
//         cout << diff<< endl;
//     } catch (const invalid_argument &e) {
//         cout << e.what() << endl;
//     }
//     return 0;
// }