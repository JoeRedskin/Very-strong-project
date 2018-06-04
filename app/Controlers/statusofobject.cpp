#include "statusofobject.h"
#include "enemy.h"
#include "herocontrol.h"
#include "coordinatesofobjects.h"
#include "enemy.h"
int statusofobject::currentExp()
{
return Xp;
}



unsigned int statusofobject::currentHealth()
{

return Hp;
}

void statusofobject::tookHP(unsigned int Health)
{
Health=Health-10;
Hp=Health;
}
void statusofobject::Money(unsigned int Money)
{

    Mo=Money;
}


unsigned int statusofobject::MYMoney()
{

    return Mo;
}




void  statusofobject::setdexp(unsigned int exp)
{


        exp=exp+50;

    Xp=exp;
}


