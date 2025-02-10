# Lec10 STL summary
make a programm from scratch that predicts the author of a piece of litarature   
we read files as string and transform them all to lowercase
```cpp
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
```
count occurences of strings in the feature vector and create a feature vector
```cpp
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
```
calculate dot product and angles
```cpp
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
```