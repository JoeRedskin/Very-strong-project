
QT += quick
CONFIG += c++11
CONFIG += resources_big
DEFINES += QT_DEPRECATED_WARNINGS



SOURCES += \
main.cpp \
Controlers/herocontrol.cpp \
Controlers/coordinatesofobjects.cpp \
 Controlers/statusofobject.cpp \
 Controlers/enemy.cpp



RESOURCES +=\
 qml.qrc


QML_IMPORT_PATH =


QML_DESIGNER_IMPORT_PATH =


HEADERS +=Controlers/herocontrol.h \
        Controlers/coordinatesofobjects.h\
        Controlers/statusofobject.h \
        Controlers/enemy.h



qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    12.wav\
   Fon_menu.wav \
    Roland-JV-2080-Nylon-Gtr-C3.wav \
    image/stand.png \
    image/Hero.png \
    image/fight.png \
    image/left.png \
    image/travka2.jpg\
    image/new_trava.png
