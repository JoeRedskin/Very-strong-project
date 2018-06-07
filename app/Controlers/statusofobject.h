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
  int currentHealth();
   Q_INVOKABLE
 void  Money(unsigned int Money);
   Q_INVOKABLE
   int currentExp();
   Q_INVOKABLE
    void setdexp();
Q_INVOKABLE
    void tookHP();
Q_INVOKABLE
    unsigned int MYMoney();
    bool killer=0;
unsigned int Exp = 0;
int Hp = 100;
unsigned int Mo = 0;
};

#endif // STATUSOFOBJECT_H
