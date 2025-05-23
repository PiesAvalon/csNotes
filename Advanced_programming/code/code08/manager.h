#include <iostream>
#include <map>
#include <memory>
#include <string>
#include <cstddef>

class SharedObjectManager
{
private:
    std::map<std::string, std::weak_ptr<int>> object_map;
    // 你可以自由添加其他成员变量与辅助函数

public:
    void register_object(const std::string &name, std::shared_ptr<int> obj);
    std::shared_ptr<int> get_object(const std::string &name) const;
    void cleanup();
    size_t size();
};
