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
   bool isNewLevel(unsigned int Xp);
Q_INVOKABLE
   unsigned int Exp = 0;
   unsigned int Lvl = 1;
};

#endif // HEROCONTROL_H




