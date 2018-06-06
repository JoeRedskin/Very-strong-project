#ifndef STATUSOFOBJECT_H
#define STATUSOFOBJECT_H
#include <QObject>
#include "coordinatesofobjects.h"
#include   "statusofobject.h"
class statusofobject:public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE
 unsigned  int currentHealth();
   Q_INVOKABLE
 void  Money(unsigned int Money);
   Q_INVOKABLE
   int currentExp();
   Q_INVOKABLE
    void setdexp(unsigned int exp);
Q_INVOKABLE
    void tookHP(unsigned int Health);
Q_INVOKABLE
    unsigned int MYMoney();
    bool killer=0;
unsigned int Xp = 0;
unsigned int Hp = 0;
unsigned int Mo = 0;
};

#endif // STATUSOFOBJECT_H
