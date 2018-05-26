#include "coordinatesofobjects.h"
#include <QObject>
 void coordinatesofobjects:: setPos(int xVal, int yVal)
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

void coordinatesofobjects::take(int up, int down)
{
    setPos(getPosX() + up, getPosY());
        setPos(getPosX(), getPosY() + down);


}
