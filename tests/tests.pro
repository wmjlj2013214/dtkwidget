TEMPLATE = app
CONFIG -= app_bundle
QT += widgets dtkcore dtkgui testlib

CONFIG += testcase no_testcase_installs

unix:QMAKE_RPATHDIR += $$OUT_PWD/../src
unix:LIBS += -L$$OUT_PWD/../src -ldtkwidget -lgtest

QMAKE_CXXFLAGS += -fno-access-control
QMAKE_LFLAGS += -fno-access-control

CONFIG(debug, debug|release) {
    QMAKE_CXXFLAGS += -g -Wall  -fprofile-arcs -ftest-coverage -O0
    QMAKE_LFLAGS += -g -Wall -fprofile-arcs -ftest-coverage  -O0
}

include($$PWD/src/src.pri)

SOURCES += \
    $$PWD/main.cpp
