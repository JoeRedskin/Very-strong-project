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
    ../app/Controllers/statusofobject.h\
      ../app/Controllers/herocontrol.h\
    ../app/Controlers/coordinatesofobjects.h\
Test.h

SOURCES +=     main.cpp \
 ../app/Controlers/herocontrol.cpp\
../app/Controlers/statusofobject.cpp\
../app/Controlers/coordinatesofobjects.cpp

INCLUDEPATH += ../app ../app/Controlers
