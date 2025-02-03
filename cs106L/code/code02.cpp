#include<iostream>
#include<string>
#include<sstream>
#include<fstream>
using namespace std;

int getInteger();
int getInteger(const string& prompt);
string promptUserForFile(ifstream& stream,
                         string prompt,
                         string reprompt);

int main(){
    
}

int getInteger()
{
    string str;
    int val;
    stringstream ss;
    getline(cin, str);
    ss << str;
    ss >> val;
    return val;
}

int getInteger(const string& prompt)
{
    while(true)
    {
        cout << prompt << endl;
        string line;
        if(!getline(cin, line))
            throw domain_error("...");
        int result;
        char trash;
        istringstream iss(line);
        if(iss >> result && !(iss >> trash))
            return result;
        cout << "invalid input, please input again!" << endl;
    }
}

// Write the following function which prompts
// the user for a filename, opens the ifstream to
// the file, reprompt if the filename is not valid
// and then return the filename.
string promptUserForFile(ifstream& stream,
                         string prompt = "",
                         string reprompt = ""){
    cout << prompt << endl;
    while(true){
        string filename;
        getline(cin, filename);
        stream.open(filename);
        if(stream.is_open())
        return filename;
        cout << reprompt << endl;
    }

}

