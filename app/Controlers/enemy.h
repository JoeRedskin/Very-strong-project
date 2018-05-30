/*#ifndef ENEMY_H
#define ENEMY_H

#include <QObject>
#include <QWidget>
class Enemy:public QObject
{
 Q_OBJECT
public:
<<<<<<< HEAD
=======
  //  Q_INVOKABLE
 //   Enemy(unsigned int Health,unsigned int Damage, unsigned int Gold);
>>>>>>> TestWork

   Enemy(unsigned int Health,unsigned int Damage, unsigned int Gold)
    {
    Health=100;
    Damage=10;
    Gold=100;


    }

Q_INVOKABLE
 unsigned int getMoney();
 Q_INVOKABLE
 unsigned int getDamage();
<<<<<<< HEAD
public:
 Q_INVOKABLE
 unsigned G;
   Q_INVOKABLE
 int  setMoney(unsigned int Gold);
=======

   unsigned G;
   Q_INVOKABLE
  int setMoney(unsigned int Gold);
>>>>>>> TestWork
   Q_INVOKABLE
 void   setDamage(unsigned int Damage);
 Q_INVOKABLE
   unsigned  D;
//void setHealth(unsigned int Health);
    };
#endif // ENEMY_H*/
