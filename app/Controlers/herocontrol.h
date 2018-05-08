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
    unsigned int Exp();
    unsigned int  Level();
    unsigned int  Money();
    void Statics(Exp(),Level(),Money())
    {


    }
public:

};

#endif // HEROCONTROL_H




