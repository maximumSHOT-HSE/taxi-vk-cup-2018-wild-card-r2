QT += core
QT -= gui

CONFIG += c++14

TARGET = vk-cup-2018-wild-card-round-2
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

QMAKE_CXXFLAGS += -Ddebug
QMAKE_CXXFLAGS += -Wall
QMAKE_CXXFLAGS += -Wshadow
QMAKE_CXXFLAGS += -Wextra
QMAKE_CXXFLAGS += -pedantic
