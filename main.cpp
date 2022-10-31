#include <iostream>

using namespace std;

#include "xml/Xml.h"

using namespace yazi::xml;

int main() {
//    Xml root;
//    root.name("students");
//    const string &name = root.name();
//    cout << name << endl;
//
//    root.name("xyz");
//    cout << root.name() << endl;

//    root.name("student");
//    root.attr("id", "1");
//    root.attr("class", "803");
//    root.text("a good student");
//
//    cout << root.str() << endl;

    /*Xml s1;
    s1.name("student");
    s1.attr("id", "1");
    s1.attr("class", "101");
    s1.text("a good student");


    Xml s2;
    s2.name("student");
    s2.attr("id", "2");
    s2.attr("class", "102");
    s2.text("a bad student");


    Xml root;
    root.name("students");
//    root[0] = s1;
//    root[1] = s2;
    root.append(s1);
    root.append(s2);
//    cout << root.str() << endl;


//    root.remove(0);
//    cout << root.str() << endl;
//
//    root.remove("student");
//    cout << root.str() << endl;

    for (auto it = root.begin(); it != root.end(); it++) {
        cout << it->str() << endl;
    }
    cout << ""<< endl;
    int size = root.size();
    for (int i = 0; i < size; i++) {
        cout << root[i].str() << endl;
    }*/


    /* Xml s1;
     s1.name("student");
     s1.attr("id", 1);
     s1.attr("class", "101");
     s1.text("a good student");

     int id = s1.attr("id");
     cout << "id=" << id << endl;


     Xml s2;
     s2.name("student");
     s2.attr("id", "2");
     s2.attr("class", "102");
     s2.text("a bad student");


     Xml root;
     root.name("students");
 //    root[0] = s1;
 //    root[1] = s2;
     root.append(s1);
     root.append(s2);
 //    cout << root.str() << endl;


 //    root.remove(0);
 //    cout << root.str() << endl;
 //
 //    root.remove("student");
 //    cout << root.str() << endl;

     for (auto it = root.begin(); it != root.end(); it++) {
         cout << it->str() << endl;
     }
     cout << "" << endl;
     int size = root.size();
     for (int i = 0; i < size; i++) {
         cout << root[i].str() << endl;
     }*/
    Xml root;
    root.load("../test.xml");

    cout << root.str() << endl;
    root.save("../save.xml");

    return 0;
}
