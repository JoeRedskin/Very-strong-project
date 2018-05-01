#QT += quick
QT  += core gui svg xml qml quick quickwidgets sql core multimedia
CONFIG += c++11
CONFIG += resources_big


# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
Actor.qml\
ButtonT.qml\
Gameplay.qml\
Menu.qml\
Opt.qml\
Play.qml\
test.qml \
   main.cpp



RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

SOURCES +=

HEADERS +=


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
   Fon_menu.wav \
    Roland-JV-2080-Nylon-Gtr-C3.wav\
    image/stand.png \
    image/Hero.png \
    image/fight.png \
    image/left.png \
    image/travka2.jpg \
    image/Map_v3.0.png \
    image/fon_for_menu.png \
    image/hero_spr.png
