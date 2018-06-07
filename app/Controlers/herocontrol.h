//Для ветки опыта
#ifndef HEROCONTROL_H
#define HEROCONTROL_H
#include <QObject>
#include "coordinatesofobjects.h"
#include"statusofobject.h"

class herocontrol:public statusofobject
{

public:
Q_INVOKABLE
   void Level();
Q_INVOKABLE
   unsigned int getLvl();
Q_INVOKABLE
   bool isNewLevel();

Q_INVOKABLE
   unsigned int Lvl = 1;
};

#endif // HEROCONTROL_H




