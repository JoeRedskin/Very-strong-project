TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
Actor.qml\
ButtonT.qml\
Gameplay.qml\
Menu.qml\
Opt.qml\
Play.qml\
test.qml \
    main.cpp
HEADERS += \
tests/GT.h

QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
