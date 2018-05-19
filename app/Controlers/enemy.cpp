#include "enemy.h"
#include "statusofobject.h"
#include "herocontrol.h"

Enemy::Enemy(unsigned int Health,
                 unsigned int Damage,
                 unsigned int Gold)
{
    /*
statusofobject:: DamageOnMe(Damage);
statusofobject:: currentHealth(Health);
statusofobject:: Money(Gold);//
*/
Money(Gold);
}

void Enemy:: setMoney(unsigned int Gold)
{
      G=Gold;
}
unsigned int Enemy::getMoney()
{
  return G;
}
