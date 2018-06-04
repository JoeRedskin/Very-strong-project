#ifndef HEROCONTROL_H
#define HEROCONTROL_H
#include <QObject>
#include "coordinatesofobjects.h"
#include"statusofobject.h"
class herocontrol:public coordinatesofobjects
{

public:

};
class OurHero :public statusofobject
{


public:
unsigned int Level();
   unsigned int Exp();
   unsigned int Money();

};


#endif // HEROCONTROL_H




