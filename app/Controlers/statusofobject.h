#ifndef STATUSOFOBJECT_H
#define STATUSOFOBJECT_H


class statusofobject
{
public:
   int currentHealth();
   int currentExp();

    virtual bool DamageOnMe(unsigned howmuch);
    void tookHP(unsigned amountOfHealth);
    bool killer=0;
};

#endif // STATUSOFOBJECT_H
