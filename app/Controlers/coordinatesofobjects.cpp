#include "coordinatesofobjects.h"


void coordinatesofobjects (int xVal, int yVal)
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
