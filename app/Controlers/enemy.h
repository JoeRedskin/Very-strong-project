#ifndef ENEMY_H
#define ENEMY_H

#include <QObject>
#include <QWidget>
class Enemy:public QObject
{
 Q_OBJECT
public:

  //  Q_INVOKABLE
 //   Enemy(unsigned int Health,unsigned int Damage, unsigned int Gold);

   Q_INVOKABLE
 unsigned int getMoney();
 Q_INVOKABLE
 unsigned int getDamage();
public:

   unsigned G;
   Q_INVOKABLE
  int setMoney(unsigned int Gold);
   Q_INVOKABLE
 void   setDamage(unsigned int Damage);
 Q_INVOKABLE
   unsigned  D;
//void setHealth(unsigned int Health);
    };
#endif // ENEMY_H
