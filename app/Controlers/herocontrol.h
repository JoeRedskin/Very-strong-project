#ifndef HEROCONTROL_H
#define HEROCONTROL_H

#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include "coordinatesofobjects.h"
class herocontrol:public coordinatesofobjects
{

public:

void setPos(int valX, int valY);

public:
   void  Statics(int vDamage , int vHealth,int vSpeed, int Exp);





};

#endif // HEROCONTROL_H




