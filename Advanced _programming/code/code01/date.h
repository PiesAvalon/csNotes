#ifndef DATE_H
#define DATE_H

class Date {
private:
    int year;
    int month;
    int day;

public:
    // 构造函数
    Date(int y, int m, int d);

    // 判断日期是否合法
    bool isValidDate() const;

    // 判断是否是闰年
    bool isLeapYear(int y) const;

    // 返回该月的天数
    int daysInMonth(int m, int y) const;

    // 计算从某个日期到另一个日期的天数差
    int calculateDaysBetween(const Date &other) const;

    // 计算从公元1年1月1日到当前日期的天数
    int daysSinceEpoch() const;

    // 显示日期
    void display() const;
};

#endif
