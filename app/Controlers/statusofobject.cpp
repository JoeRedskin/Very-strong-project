#include "statusofobject.h"
#include "enemy.h"
#include "herocontrol.h"
#include "coordinatesofobjects.h"
int statusofobject::currentExp()
{
return Xp;
}



int statusofobject::currentHealth(unsigned int Health)
{
return Health;
}

int statusofobject::tookHP(unsigned int amountOfHealth)
{
return amountOfHealth;
}
unsigned int statusofobject::Money(unsigned int Money)
{
    return Money;

}
void  statusofobject::setdexp(unsigned int exp)
{


        exp=exp+50;

    Xp=exp;
}


