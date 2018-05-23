
#include <gtest/gtest.h>
#include "herocontrol.h"
#include "statusofobject.h"
#include "coordinatesofobjects.h"
TEST (first, coord)
{
coordinatesofobjects obj;

  obj.take(40,50);
   SUCCEED();

}
