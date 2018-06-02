TEMPLATE = subdirs

CONFIG -= app_bundle
CONFIG += qt


QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage -O0
LIBS += -lgcov

SUBDIRS = app tests

CONFIG += ordered
