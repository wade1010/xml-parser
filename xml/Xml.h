#pragma once

#include "string"
#include "map"
#include "list"
#include "../value/Value.h"

using namespace std;
using namespace yazi::value;

namespace yazi {
    namespace xml {
        class Xml {
        public:
            Xml();

            Xml(const char *name); //c string

            Xml(const string &name);//c++ string
            Xml(const Xml &other);//拷贝构造函数

            Xml &operator=(const Xml &other);

            string name() const;

            void name(const string &name);

            string text() const;

            void text(const string &name);

            Value attr(const string &key);

            void attr(const string &key, const Value &val);

            string str() const;

            void append(const Xml &child);

            Xml &operator[](int index);

            Xml &operator[](const char *name);

            Xml &operator[](const string &name);

            void remove(int index);

            void remove(const char *name);

            void remove(const string &name);

            void clear();

            typedef std::list<Xml>::iterator iterator;

            iterator begin() {
                return m_children->begin();
            }

            iterator end() {
                return m_children->end();
            }

            iterator erase(iterator it) {
                it->clear();
                return m_children->erase(it);
            }

            int size() const {
                return m_children->size();
            }

            bool load(const string &filename);

            bool save(const string &filename);

            bool parse(const string &str);

        private:
            string *m_name;
            string *m_text;
            std::map<string, Value> *m_attrs;
            std::list<Xml> *m_children;
        };

    }

}