#include "GameEngine.h"
   

GameEngine::GameEngine(){
    scene_desc = nullptr;
}

GameEngine::GameEngine(const char* desc){
    //TODO
    const char* src = desc;
    if (src) {
        scene_desc = new char[strlen(src)+1];
        strncpy(scene_desc, src,strlen(src));
    } else {
        scene_desc = nullptr;
    }

}

GameEngine::GameEngine(const GameEngine& other){
    //TODO
    strategyGenerators = other.strategyGenerators;
    processors = other.processors;
    activeProcessors = other.activeProcessors;
    const char* src = other.scene_desc;
    if (src) {
        scene_desc = new char[strlen(src)+1];
        strncpy(scene_desc, src,strlen(src));
    } else {
        scene_desc = nullptr;
    }
}

GameEngine& GameEngine::operator=(const GameEngine& other) {
    if (this != &other) {
        delete[] scene_desc;
        const char* src = other.scene_desc;
        if (src) {
            scene_desc = new char[strlen(src)+1];
            strncpy(scene_desc, src,strlen(src));
        } else {
            scene_desc = nullptr;
        }
        processors = other.processors;
        strategyGenerators = other.strategyGenerators;
        activeProcessors = other.activeProcessors;
    }
    return *this;
}

GameEngine::~GameEngine(){
    //TODO
    if(scene_desc){
        delete scene_desc;
    }

}

void GameEngine::addProcessor(bool (*func)(string&)){
    //TODO
    activeProcessors.push_back(func);

}

void GameEngine::addStrategyGenerator(StrategyGenerator gen){
    //TODO
    strategyGenerators.push_back(gen);

}

bool GameEngine::processCommand(string& command){
    //TODO
    //注意非法原命令不变
    string tem = command;
    for(StrategyGenerator g : strategyGenerators){
        addProcessor(g(command));
    }
    for(ProcessorFunc p : activeProcessors){
        if(!p(tem)){
            return false;
        }
    }
    command = tem;
    return true;
}

const char* GameEngine::getSceneDesc() const{
    //TODO
    return scene_desc;
}

GameEngine GameEngine::createBackup()const{
    //TODO
    char* temp = new char[strlen(scene_desc) + 8];
    strcpy(temp, "BACKUP:");
    strcat(temp, scene_desc);
    auto copy = GameEngine(temp);
    delete []temp;
    return copy;

}

bool formatStandardize(string& cmd) {
    //TODO
    //压缩空格并转化为小写
    if(cmd.size()==0){
        return false;
    }
    auto new_end = unique(cmd.begin(), cmd.end(), [](char a, char b){return isspace(a) && isspace(b);});
    cmd.erase(new_end, cmd.end());
    transform(cmd.begin(), cmd.end(), cmd.begin(), [](char a){return tolower(a);});
    return true;
}

bool removeCodes(string& s) {
    //TODO
    auto counts = count(s.begin(), s.end(), '#');
    if(counts == 0){
        return true;
    }
    if(counts == 1){
        s.erase(find(s.begin(), s.end(), '#'), s.end());
        return true;
    }
    if(counts == 2){
        auto find1 = find(s.begin(), s.end(), '#');
        auto find2 = find(find1+1, s.end(), '#') + 1;
        s.erase(find1, find2);
        return true;
    }
    return true;
}
