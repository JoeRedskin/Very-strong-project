
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


/*TEST(money,first)
{

int y;
//Enemy obj;
//obj.setMoney(100);
//y=obj.getMoney();
ASSERT_EQ(y,100);
}*/

