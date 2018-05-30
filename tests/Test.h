
#include <gtest/gtest.h>
#include "herocontrol.h"
#include "statusofobject.h"
#include "coordinatesofobjects.h"
#include "enemy.h"
TEST (coord, first)
{
coordinatesofobjects obj;

  obj.take(40,50);// просто вызов
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

