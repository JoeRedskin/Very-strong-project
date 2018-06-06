#include "enemy.h"
#include "statusofobject.h"
#include "herocontrol.h"
#include <QObject>



int Enemy:: setMoney(unsigned int Gold)
{
      G=Gold;
      return G;
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


