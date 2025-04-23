#include <iostream>
#include<sstream>
#include<string>

int stringToInteger(const std::string& str);
void printStateBit(const std::stringstream& ss);
void printEndTime(const std::string& input);

int main() {
    std::string input = "1:30 PM \n 1 hour 20 minute";
    printEndTime(input);
}

int stringToInteger(const std::string& str)
{
    std::stringstream ss(str);
    int result;
    if (!(ss >> result)) 
        throw std::domain_error("no valid int at beginning!");
    // if(!ss.eof()) throw std::domain_error("int too long!");
    char remain;
    if(ss >> remain) 
        throw std::domain_error("more than a single valid int!");
    std::cout << result << std::endl;
    return result;
}

void printStateBit(const std::stringstream& ss)
{
    if(ss.good())
        std::cout << "good" << std::endl;
    if(ss.bad())
        std::cout << "bad" << std::endl;
    if(ss.fail())
        std::cout << "fail" << std::endl;
    if(ss.eof())
        std::cout << "EoF" << std::endl;
    std::cout << "----------------------" << std::endl;
}

void printEndTime(const std::string& input){
    std::stringstream ss;
    ss << input;
    int hour, minute, add_hour, add_minute;
    char c;
    char pa;
    std::string str;
    ss >> hour >> c >> minute >> pa >>str >> add_hour >> str >> add_minute;
    minute += add_minute;
    if(minute >= 60){
        hour++;
        minute %= 60;
    }
    hour += add_hour;
    std::cout << hour << ":" << minute << " " << pa << 'M' << std::endl;
}