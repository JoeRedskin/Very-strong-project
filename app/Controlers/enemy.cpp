#include "enemy.h"
#include "statusofobject.h"
#include "herocontrol.h"
#include <QObject>
Enemy::Enemy(unsigned int Health,unsigned int Damage, unsigned int Gold)
{

}

void Enemy:: setMoney(unsigned int Gold)
{
      G=Gold;
}
unsigned int Enemy::getMoney()
{
  return G;
}

void Enemy:: setDamage(unsigned int Damage)
{
    D=Damage;
}


unsigned int Enemy::getDamage()
{
    return D;

}


