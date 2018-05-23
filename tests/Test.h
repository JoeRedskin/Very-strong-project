
#include <gtest/gtest.h>
#include "herocontrol.h"
#include "statusofobject.h"
#include "coordinatesofobjects.h"
TEST (first, coord)
{
coordinatesofobjects obj;
  int p= obj.getPosX()+55;
    ASSERT_EQ(p ,55);

}
