TEMPLATE = subdirs


QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage -O0


SUBDIRS = app tests

QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

CONFIG += ordered
