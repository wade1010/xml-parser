//
// Created by cheng on 2022/10/31.
//

#include <fstream>
#include "Xml.h"
#include "sstream"
#include "../value/Value.h"
#include "../xml/Parser.h"

using namespace std;
using namespace yazi::xml;
using namespace yazi::value;

Xml::Xml() : m_name(nullptr), m_text(nullptr), m_attrs(nullptr), m_children(nullptr) {

}

Xml::Xml(const char *name) : m_name(nullptr), m_text(nullptr), m_attrs(nullptr), m_children(nullptr) {
    m_name = new string(name);
}

Xml::Xml(const string &name) : m_name(nullptr), m_text(nullptr), m_attrs(nullptr), m_children(nullptr) {
    m_name = new string(name);
}

Xml::Xml(const Xml &other) {
    m_name = other.m_name;
    m_text = other.m_text;
    m_attrs = other.m_attrs;
    m_children = other.m_children;
}

Xml &Xml::operator=(const Xml &other) {
    //原先有动态分配的内容，所以调用clear清空
    clear();
    m_name = other.m_name;
    m_text = other.m_text;
    m_attrs = other.m_attrs;
    m_children = other.m_children;
    return *this;
}

string Xml::name() const {
    if (m_name == nullptr) {
        return "";
    }
    return *m_name;
}

void Xml::name(const string &name) {
    if (m_name != nullptr) {
        delete m_name;
        m_name = nullptr;
    }
    m_name = new string(name);
}


string Xml::text() const {
    if (m_text == nullptr) {
        return "";
    }
    return *m_text;
}

void Xml::text(const string &text) {
    if (m_text != nullptr) {
        delete m_text;
        m_text = nullptr;
    }
    m_text = new string(text);
}

Value Xml::attr(const string &key) {
    if (m_attrs == nullptr) {
        m_attrs = new std::map<string, Value>();
    }
    return (*m_attrs)[key];
}

void Xml::attr(const string &key, const Value &val) {
    if (m_attrs == nullptr) {
        m_attrs = new std::map<string, Value>();
    }
    (*m_attrs)[key] = val;
}

string Xml::str() const {
    if (m_name == nullptr) {
        throw std::logic_error("element name is empty");
    }
    stringstream ss;
    ss << "<";
    ss << *m_name;
    if (m_attrs != nullptr) {
        for (auto it = m_attrs->begin(); it != m_attrs->end(); it++) {
            ss << " " << it->first << "=\"" << string(it->second) << "\"";
        }
    }
    ss << ">";
    if (m_children != nullptr) {
        for (auto it = m_children->begin(); it != m_children->end(); it++) {
            ss << it->str();
        }
    }
    if (m_text != nullptr) {
        ss << *m_text;
    }
    ss << "</" << *m_name << ">";
    return ss.str();
}

void Xml::clear() {
    if (m_name != nullptr) {
        delete m_name;
        m_name = nullptr;
    }
    if (m_text != nullptr) {
        delete m_text;
        m_text = nullptr;
    }
    if (m_attrs != nullptr) {
        delete m_attrs;
        m_attrs = nullptr;
    }
    if (m_children != nullptr) {
        for (auto &child:*m_children) {
            child.clear();
        }
        delete m_children;
        m_children = nullptr;
    }
}

void Xml::append(const Xml &child) {
    if (m_children == nullptr) {
        m_children = new std::list<Xml>();
    }
    m_children->push_back(child);
}

Xml &Xml::operator[](int index) {
    if (index < 0) {
        throw std::logic_error("index less than  zero");
    }
    if (m_children == nullptr) {
        m_children = new std::list<Xml>();
    }
    int size = m_children->size();
    if (index >= 0 && index < size) {
        auto it = m_children->begin();
        for (int i = 0; i < index; i++) {
            it++;
        }
        return *it;
    }
    if (index >= size) {
        for (int i = size; i <= index; i++) {
            m_children->push_back(Xml());
        }
    }
    return m_children->back();
}

Xml &Xml::operator[](const char *name) {
    return (*this)[string(name)];//调用下面的方法
}

Xml &Xml::operator[](const string &name) {
    if (m_children == nullptr) {
        m_children = new std::list<Xml>();
    }
    for (auto it = m_children->begin(); it != m_children->end(); it++) {
        if (it->name() == name) {
            return *it;
        }
    }
//    上面等同于下面
//    for (auto & it : *m_children) {
//        if (it.name() == name) {
//            return it;
//        }
//    }
    m_children->push_back(Xml(name));
    return m_children->back();
}

void Xml::remove(int index) {
    if (m_children == nullptr) {
        return;
    }
    int size = m_children->size();
    if (index < 0 || index >= size) {
        return;
    }
    auto it = m_children->begin();
    for (int i = 0; i < index; i++) {
        it++;
    }
    it->clear();
    m_children->erase(it);
}

void Xml::remove(const char *name) {
    remove(string(name));
}

void Xml::remove(const string &name) {
    for (auto it = m_children->begin(); it != m_children->end();) {
        if (it->name() == name) {
            it->clear();
            it = m_children->erase(it);
        } else {
            it++;
        }
    }
}

bool Xml::load(const string &filename) {
    Parser p;
    if (!p.load_file(filename)) {
        return false;
    }
    *this = p.parse();
    return true;
}

bool Xml::save(const string &filename) {
    ofstream f_out(filename);
    if (f_out.fail()) {
        return false;
    }
    f_out << str();
    f_out.close();
    return true;
}

bool Xml::parse(const string &str) {
    Parser p;
    if (!p.load_string(str)) {
        return false;
    }
    *this = p.parse();
    return true;
}
