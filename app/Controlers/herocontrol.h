#ifndef HEROCONTROL_H
#define HEROCONTROL_H

#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include "coordinatesofobjects.h"
class herocontrol:public coordinatesofobjects
{

public:

int setPos(int valX, int valY);
};


#endif // HEROCONTROL_H




