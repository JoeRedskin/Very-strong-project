
QT  += core gui svg xml qml quick quickwidgets sql core multimedia
CONFIG += c++11
CONFIG += resources_big
CONFIG -= debug_and_release debug_and_release_target


DEFINES += QT_DEPRECATED_WARNINGS



SOURCES += \
main.cpp \
Controlers/herocontrol.cpp \
Controlers/coordinatesofobjects.cpp \
 Controlers/statusofobject.cpp \
 Controlers/enemy.cpp



RESOURCES += qml.qrc


QML_IMPORT_PATH =


QML_DESIGNER_IMPORT_PATH =

SOURCES +=
HEADERS +=Controlers/herocontrol.h \
        Controlers/coordinatesofobjects.h \
        Controlers/statusofobject.h \
        Controlers/enemy.h



qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
   Fon_menu.wav \
    Roland.wav \
    image/stand.png \
    image/Hero.png \
    image/fight.png \
    image/left.png \
    image/travka2.jpg\
    image/new_trava.png
