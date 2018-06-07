#include "statusofobject.h"
#include "herocontrol.h"
#include "coordinatesofobjects.h"
#include "enemy.h"

int statusofobject::currentExp()
{
    return Exp;
}


 int statusofobject::currentHealth()
{

    return Hp;
}

void statusofobject::tookHP()
{

    Hp-=10;
}
void statusofobject::Money(unsigned int Money)
{

    Mo=Money;
}

unsigned int statusofobject::MYMoney()
{

    return Mo;
}

void  statusofobject::setdexp()
{
    Exp+=50;
}


