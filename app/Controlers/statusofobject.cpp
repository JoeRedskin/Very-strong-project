#include "statusofobject.h"
#include "enemy.h"
#include "herocontrol.h"
#include "coordinatesofobjects.h"
int statusofobject::currentExp()
{


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
int statusofobject::setdexp(unsigned int xp)
{
    if(killer=true)
    {
        xp=xp+50;
    }
}


