#include "manager.h"

void SharedObjectManager::register_object(const std::string &name, std::shared_ptr<int> obj)
{
    // TODO
    object_map[name] = obj;
}

std::shared_ptr<int> SharedObjectManager::get_object(const std::string &name) const
{
    // TODO
    auto it = object_map.find(name);
    if(it != object_map.end()){
        auto p = it->second.lock();
        if(p){
            return p;
        }
    }
    return nullptr;
}

void SharedObjectManager::cleanup()
{
    // TODO
    for(auto it = object_map.begin(); it != object_map.end();){
        if(it->second.expired()){
            object_map.erase(it->first);
            it = object_map.begin();
        }
        else{
            ++it;
        }
    }
}

size_t SharedObjectManager::size()
{
    // TODO
    cleanup();
    return object_map.size();
}