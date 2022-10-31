//
// Created by cheng on 2022/10/31.
//

#include "Value.h"
#include "sstream"

using namespace std;
using namespace yazi::value;

using namespace yazi::value;

Value::Value() {
}

Value::Value(bool value) {
    *this = value;
}

Value::Value(int value) {
    *this = value;
}

Value::Value(double value) {
    *this = value;
}

Value::Value(const char *value) : m_value(value) {
}

Value::Value(const string &value) : m_value(value) {
}

Value::~Value() {
}

Value &Value::operator=(bool value) {
    m_value = value ? "true" : "false";
    return *this;
}

Value &Value::operator=(int value) {
    stringstream ss;
    ss << value;
    m_value = ss.str();
    return *this;
}

Value &Value::operator=(double value) {
    stringstream ss;
    ss << value;
    m_value = ss.str();
    return *this;
}

Value &Value::operator=(const char *value) {
    m_value = value;
    return *this;
}

Value &Value::operator=(const string &value) {
    m_value = value;
    return *this;
}

Value &Value::operator=(const Value &value) {
    m_value = value.m_value;
    return *this;
}

bool Value::operator==(const Value &other) {
    return m_value == other.m_value;
}

bool Value::operator!=(const Value &other) {
    return !(m_value == other.m_value);
}

Value::operator bool() {
    if (m_value == "true")
        return true;
    else if (m_value == "false")
        return false;
    return false;
}

Value::operator int() {
    return std::atoi(m_value.c_str());
}

Value::operator double() {
    return std::atof(m_value.c_str());
}

Value::operator string() {
    return m_value;
}