#ifndef HEROCONTROL_H
#define HEROCONTROL_H

#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include "coordinatesofobjects.h"
#include"statusofobject.h"
class herocontrol:public coordinatesofobjects
{

public:

void setPos(int valX, int valY);
};
 class OurHero :public statusofobject
{
public:
unsigned int Level();
   unsigned int Exp();
   unsigned int Money();
};

#endif // HEROCONTROL_H




