#ifndef HEROCONTROL_H
#define HEROCONTROL_H

#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include "coordinatesofobjects.h"
class herocontrol:public coordinatesofobjects
{
private:
    struct place
    {
        int x,y;
    }
    ;

};

#endif // HEROCONTROL_H
