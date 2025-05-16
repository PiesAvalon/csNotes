 struct Element
{
    int num; // 或者其他类型
    bool operator==(const Element e) const;
};
class ListNode
{
    Element e;
    ListNode *back = nullptr;
    ListNode *next = nullptr;
    ListNode();
    ListNode(const Element &e_);
    friend class List; // 为便于测评，这里设置为友元
};