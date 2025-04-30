#include <iostream>

// 窗口基类
class Window {
protected:
    int _x, _y, _w, _h;
};

// 派生类，用链表的形式将窗口组织起来
class WindowInScreen: public Window {
    int id;
    WindowInScreen *next;

public:
    WindowInScreen(): next(nullptr) {}

    WindowInScreen* getNext() {
        return next;
    }
    void setNext(WindowInScreen *next) {
        this->next = next;
    }
    int getId() {
        return id;
    }
    void setId(int id) {
        this->id = id;
    }
    int getX() {
        return _x;
    }
    void setX(int x) {
        _x = x;
    }
    int getY() {
        return _y;
    }
    void setY(int y) {
        _y = y;
    }
    int getW() {
        return _w;
    }
    void setW(int w) {
        _w = w;
    }
    int getH() {
        return _h;
    }
    void setH(int h) {
        _h = h;
    }

    void display() {
        // TODO
        //(id: $id, x: $x, y: $y, w: $w, h: $h)
        std::cout << "(id: " << id
                  << ", x: " << _x
                  << ", y: " << _y
                  << ", w: " << _w
                  << ", h: " << _h
                  << ")" << std::endl;
    }
};

// 屏幕类
class Screen {
    int _w, _h;
    int count;
    WindowInScreen *root;

public:
    Screen(int w = 1920, int h = 1080): _w(w), _h(h), count(0), root(nullptr) {}
    ~Screen() {
        // TODO
        auto head = root;
        while(head){
            auto temp = head;
            head = head->getNext();
            delete temp;
        }
        root = nullptr;
    }

    void addWindow(int id) {
        // TODO
        count++;
        auto tail = root;
        while(tail && tail->getNext()) {
            tail = tail->getNext();
        }
        WindowInScreen *newWindow = new WindowInScreen();
        newWindow->setId(id);
        if(tail){
            if(count % 2 == 0){
                tail->setW(tail->getW() / 2);
                newWindow->setW(tail->getW());
                newWindow->setX(tail->getX() + tail->getW());
                newWindow->setH(tail->getH());
                newWindow->setY(tail->getY());

            }
            else{
                tail->setH(tail->getH() / 2);
                newWindow->setH(tail->getH());
                newWindow->setY(tail->getY() + tail->getH());
                newWindow->setW(tail->getW());
                newWindow->setX(tail->getX());
            }
            newWindow->setNext(nullptr);
        }
        else{
            newWindow->setH(_h);
            newWindow->setW(_w);
            newWindow->setX(0);
            newWindow->setY(0);
            newWindow->setNext(nullptr);
        }
        if (root == nullptr) {
            root = newWindow;
        } 
        else {
            tail->setNext(newWindow);
        }
    }

    void delWindow(int id) {
        // TODO
        count--;
        auto head = root;
        int i = 0;
        while(true){
            if(head->getId() == id){
                break;
            }
            head = head->getNext();
            i++;
        }
        auto temp_H = head->getH();
        auto temp_W = head->getW();
        auto temp_X = head->getX();
        auto temp_Y = head->getY();
        head = head->getNext();
        int temp;
        while(head){
            temp = head->getH();
            head->setH(temp_H);
            temp_H = temp;
            temp = head->getW();
            head->setW(temp_W);
            temp_W = temp;
            temp = head->getX();
            head->setX(temp_X);
            temp_X = temp;
            temp = head->getY();
            head->setY(temp_Y);
            temp_Y = temp;
            head = head->getNext();
        }
        //delete
        if(root->getId() == id){
            auto temp = root;
            root = root->getNext();
            delete temp;
        }
        else{
            head = root;
            while(head->getNext()){
                if(head->getNext()->getId() == id){
                    auto temp = head->getNext();
                    head->setNext(temp->getNext());
                    delete temp;
                    break;
                }
                head = head->getNext();
            }
        }

        //last window
        if(root == nullptr){
            return;
        }
        auto tail = root;
        while(tail->getNext()){
            tail = tail->getNext();
        }
        if(count % 2 != 0){
            tail->setW(tail->getW() * 2);
            tail->setH(tail->getH());
        }
        else{
            tail->setH(tail->getH() * 2);
            tail->setW(tail->getW());
        }

    }

    void display() {
        // TODO
        auto head = root;
        while(head) {
            head->display();
            head = head->getNext();
        }
    }
};