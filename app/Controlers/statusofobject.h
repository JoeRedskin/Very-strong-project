#ifndef STATUSOFOBJECT_H
#define STATUSOFOBJECT_H
#include <QObject>
#include <QQuickItem>
#include <QSharedDataPointer>
#include "coordinatesofobjects.h"
#include   "statusofobject.h"
class statusofobject:public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE
   int currentHealth(unsigned int Health);
   Q_INVOKABLE
 unsigned int Money(unsigned int Money);
   Q_INVOKABLE
   int currentExp();
   Q_INVOKABLE
    void setdexp(unsigned int exp);
Q_INVOKABLE
    int tookHP(unsigned int  amountOfHealth);

    bool killer=0;
 unsigned int Xp;

};

#endif // STATUSOFOBJECT_H
