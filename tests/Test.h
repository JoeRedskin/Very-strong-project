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
  obj.take(40,50);
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

TEST(hero_lvl,new_lvl)
{
   int lvl;
   herocontrol x;
   x.setdexp(150);
   x.Level();
   lvl = x.getLvl();

   ASSERT_EQ(lvl, 2);

}

TEST(hero_lvl,get_lvl)
{
   herocontrol x;

   ASSERT_EQ(x.getLvl(),(unsigned)1);
}

TEST(hero_lvl,null_hp_for_lvl)
{
    int lvl;
    herocontrol x;
    x.Level();
    lvl = x.getLvl();

    ASSERT_EQ(lvl, 1);
}

TEST(hero_lvl,500xp_is_new_lvl)
{

    herocontrol x;

    ASSERT_TRUE(x.isNewLevel((unsigned)500));
}

TEST(hero_lvl,0xp_is_new_lvl)
{
    herocontrol x;
    ASSERT_FALSE(x.isNewLevel((unsigned)0));
}


