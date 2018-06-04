#include <gtest/gtest.h>
#include "herocontrol.h"
#include "statusofobject.h"
#include "coordinatesofobjects.h"
#include "enemy.h"
TEST (coord, first)
{
coordinatesofobjects obj;
    int x;
  obj.setPos(40,50);
  obj.take(40,50);// просто вызов
x=obj.getPosX();

ASSERT_EQ(x,80);
 }
TEST(coord,second)
{

int x;
coordinatesofobjects obj; //getposX check
            obj.setPos(100,100);
        x=obj.getPosX();
ASSERT_EQ(x,100);

}

TEST(coord,third)
{

    int y;
    coordinatesofobjects obj; //getposY check
    obj.setPos(0,54);
    y=obj.getPosY();
    ASSERT_EQ(y,54);
}


TEST(money,first)
{
int m;
Enemy obj;
obj.setMoney(100);
m=obj.getMoney();
ASSERT_EQ(m,100);


}
TEST(damage,first)
{
    int d;
    Enemy k;
    k.setDamage(20);
    d=k.getDamage();
    ASSERT_EQ(d,20);
}

TEST(xp,first)
{
    int x;
    statusofobject o;
    o.setdexp(0);
    x=o.currentExp();
   ASSERT_EQ(x,50);
}


TEST(status,current)
{
    int Hp;
   statusofobject d;
   d.tookHP(100);
   Hp=d.currentHealth();
    ASSERT_EQ(Hp,90);

}

TEST(status,money)
{
    int M;
    statusofobject d;
    d.Money(100);
    M=d.MYMoney();
    ASSERT_EQ(M,100);

}

