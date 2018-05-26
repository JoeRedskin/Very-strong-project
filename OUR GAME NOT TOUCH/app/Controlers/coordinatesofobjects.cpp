#include "coordinatesofobjects.h"
#include <QObject>
 int coordinatesofobjects:: setPos(int xVal, int yVal)
{
   pos.x = xVal;
    pos.y = yVal;
}
    int coordinatesofobjects::getPosX(){
    return pos.x;
}
int coordinatesofobjects::getPosY(){
    return pos.y;
}
