#ifndef COORDINATESOFOBJECTS_H
#define COORDINATESOFOBJECTS_H


class coordinatesofobjects
{

private:
    struct coordinates
    {
        int x, y;
    }
    pos;
protected:
    void setPos(int xVal, int yVal);
public:
    int getPosX();
    int getPosY();

};



#endif // COORDINATESOFOBJECTS_H


