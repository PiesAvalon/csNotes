#include <iostream>
#include <vector>
#include <cstring>
#include <assert.h>
#include <algorithm> 
#include <cctype>   

using namespace std;

// 新增类型定义
typedef bool (*ProcessorFunc)(string&);  // 基础处理器
typedef ProcessorFunc (*StrategyGenerator)(const string&); // 策略生成器

bool formatStandardize(string& cmd);
bool removeCodes(string& s);

class GameEngine {
public:
    char* scene_desc;
    vector<StrategyGenerator> strategyGenerators;
    vector<ProcessorFunc> processors;
    vector<ProcessorFunc> activeProcessors;

    GameEngine(const char* desc);
    GameEngine();
    GameEngine(const GameEngine& other);
    GameEngine& operator=(const GameEngine& other);
    ~GameEngine();
    void addProcessor(bool (*func)(string&));
    void addStrategyGenerator(StrategyGenerator gen);
    bool processCommand(string& command);

    const char* getSceneDesc() const;

    GameEngine createBackup() const;
};
