#include<iostream>
#include<fstream>
#include<string>
#include<algorithm>
#include<cctype>
#include<vector>
#include <numeric>
#include<cmath>

using std::string; using std::vector;

const vector<string> FEATURE_VEC = {"a", "about", "above", "after", "again", "against", "all", "am", "an", "and",
    "any", "are", "aren't", "as", "at", "be", "because", "been", "before", "being",
    "below", "between", "both", "but", "by", "can't", "cannot", "could", "couldn't",
    "did", "didn't", "do", "does", "doesn't", "doing", "don't", "down", "during",
    "each", "few", "for", "from", "further", "had", "hadn't", "has", "hasn't", "have",
    "haven't", "having", "he", "he'd", "he'll", "he's", "her","here", "here's", "hers",
    "herself", "him", "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm",
    "i've", "if", "in", "into", "is", "isn't", "it", "it's", "its", "itself", "let's",
    "me", "more", "most", "mustn't", "my", "myself", "no", "nor", "not", "of", "off",
    "on", "once", "only", "or", "other", "ought", "our", "ours", "ourselves", "out",
    "over", "own", "same", "shan't", "she", "she'd", "she'll", "she's", "should",
    "shouldn't", "so", "some", "such", "than", "that", "that's", "the", "their",
    "theirs", "them", "themselves", "then", "there", "there's", "these", "they",
    "they'd", "they'll", "they're", "they've", "this", "those", "through", "to", "too",
    "under", "until", "up", "very", "was", "wasn't", "we", "we'd", "we'll", "we're",
    "we've", "were", "weren't", "what", "what's", "when", "when's", "where", "where's",
    "which", "while", "who", "who's", "whom", "why", "why's", "with", "won't", "would",
    "wouldn't", "you", "you'd", "you'll", "you're", "you've", "your", "yours",
    "yourself", "yourselves", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+",
    ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "@", "[", "\\", "]", "^", "_",
    "`", "{", "|", "}", "~"};

template <typename T>
int countOccurrences(const T& text, const T& feature);

string file_to_string(std::ifstream& stream){//don't declare as const or it woun't be able to read
    string file_txt = "";
    string line;
    while(std::getline(stream, line)){
        
        std::transform(line.begin(), line.end(), line.begin(), [](int c){return tolower(c);});
        file_txt += line;
        file_txt += " ";
    }
    return file_txt;
}

vector<int> createCountVec(const string& text) {
    vector<int> cntVec;
    for(string ele : FEATURE_VEC){
        int cnt = countOccurrences(text, ele);
        cntVec.push_back(cnt);
    }
    return cntVec;
}

template <typename T>
int countOccurrences(const T& text, const T& feature){
    int cnt = 0;
    auto iter = text.begin();
    while(iter != text.end()){
        iter = std::search(iter, text.end(), feature.begin(), feature.end());
        if(iter == text.end())
            break;
        iter++;
        cnt++;
    }
    return cnt;
}

double dot(const vector<int>& v1, const vector<int>& v2){
    double dot = 0;
    for(int i = 0; i < v1.size(); i++)
        dot += (double)(v1[i] * v2[i]);
    return dot;
}

double angle(const vector<int>& v1, const vector<int>& v2) {
    double d = dot(v1, v2);
    return d / std::sqrt(dot(v1, v1) * dot(v2, v2));
}

void print_vector(const vector<int>& vec){
    for(int i : vec)
        std::cout << i << " ";
    std::cout << std::endl;
}

int main(){
    std::ifstream hamilton_file("./code07_res/hamilton.txt");
    std::ifstream jj_file("./code07_res/jj.txt");
    std::ifstream madison_file("./code07_res/madison.txt");
    std::ifstream unknown_file("./code07_res/unknown.txt");

    string hamilton_string = file_to_string(hamilton_file);
    string jj_string = file_to_string(jj_file);
    string madison_string = file_to_string(madison_file);
    string unknown_string = file_to_string(unknown_file);

    auto hamilto_vec = createCountVec(hamilton_string);
    auto jj_vec = createCountVec(jj_string);
    auto madison_vec = createCountVec(madison_string);
    auto unknown_vec = createCountVec(unknown_string);

    print_vector(hamilto_vec);
    print_vector(jj_vec);
    print_vector(madison_vec);
    print_vector(unknown_vec);

    auto u_hamilto = angle(hamilto_vec, unknown_vec);
    auto u_jj = angle(jj_vec, unknown_vec);
    auto u_madison = angle(madison_vec, unknown_vec);

    std::cout << "Hamilton: " << u_hamilto << std::endl;
    std::cout << "JJ: " << u_jj << std::endl;
    std::cout << "Madison: " << u_madison << std::endl;

}