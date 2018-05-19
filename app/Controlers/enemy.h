#ifndef ENEMY_H
#define ENEMY_H
#include "statusofobject.h"


class Enemy: public stastusofobject
{
public:

    Enemy(unsigned int Health,
          unsigned int Damage, unsigned int Gold = 100);

 unsigned int getMoney();

private:
   unsigned G;
   void setMoney(unsigned int Gold);


};
#endif // ENEMY_H
