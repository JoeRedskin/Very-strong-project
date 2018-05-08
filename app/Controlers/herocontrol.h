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
   void  Statics(int vDamage , int vHealth,int vSpeed, int Exp)
   {
       vDamage=100;
       vHealth=1;
       vSpeed=50;
       Exp=0;
       //if (kill=true)
       //{
       // Exp=Exp+50;
   //}




   }




};

#endif // HEROCONTROL_H




