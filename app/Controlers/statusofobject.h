#ifndef STATUSOFOBJECT_H
#define STATUSOFOBJECT_H

class stastusofobject
{
public:
   int currentHealth(unsigned int Health);
   unsigned int Money(unsigned int Money);
   int currentExp();
    int setdexp();
    unsigned int  DamageOnMe(unsigned int Damage);
    void tookHP(unsigned amountOfHealth);

    bool killer=0;
};

#endif // STATUSOFOBJECT_H
