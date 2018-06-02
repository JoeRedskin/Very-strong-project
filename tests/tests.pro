include(gtest_dependency.pri)

QT  += core gui svg xml qml quick quickwidgets sql core multimedia
TEMPLATE = app
CONFIG += console
CONFIG += thread


QMAKE_CXXFLAGS += -Wall -Wextra -Werror
QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

DEFINES += INPUTDIR=\\\"$$PWD/input\\\"
HEADERS +=  \
    ../app/Controlers/statusofobject.h\
      ../app/Controlers/herocontrol.h\
    ../app/Controlers/coordinatesofobjects.h\
    ../app/Controlers/enemy.h\
Test.h

SOURCES +=     main.cpp \
 ../app/Controlers/herocontrol.cpp\
../app/Controlers/statusofobject.cpp\
../app/Controlers/coordinatesofobjects.cpp\
../app/Controlers/enemy.cpp
INCLUDEPATH += ../app ../app/Controlers
