#include "GameEngine.h"

GameEngine::GameEngine(){
    scene_desc = nullptr;
}

GameEngine::GameEngine(const char* desc){
    //TODO

}

GameEngine::GameEngine(const GameEngine& other){
    //TODO
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

}

void GameEngine::addProcessor(bool (*func)(string&)){
    //TODO

}

void GameEngine::addStrategyGenerator(StrategyGenerator gen){
    //TODO

}

bool GameEngine::processCommand(string& command){
    //TODO
    //注意非法原命令不变
}

const char* GameEngine::getSceneDesc() const{
    //TODO
}

GameEngine GameEngine::createBackup()const{
    //TODO
}

bool formatStandardize(string& cmd) {
    //TODO
    //压缩空格并转化为小写
}

bool removeCodes(string& s) {
    //TODO

}