#ifndef ENEMY_H
#define ENEMY_H
#include <QMainWindow>
#include <QObject>
#include <QWidget>
class Enemy:public QObject
{
 Q_OBJECT
public:
Q_INVOKABLE
   void  Enemy(unsigned int Health,unsigned int Damage, unsigned int Gold)
    {

    }
Q_INVOKABLE
 unsigned int getMoney();
 Q_INVOKABLE
 unsigned int getDamage();

private:
 Q_INVOKABLE
   unsigned G;
   Q_INVOKABLE
   void setMoney(unsigned int Gold);
   Q_INVOKABLE
 void   setDamage(unsigned int Damage);
 Q_INVOKABLE
   unsigned  D;
void setHealth(unsigned int Health);
    };
#endif // ENEMY_H
