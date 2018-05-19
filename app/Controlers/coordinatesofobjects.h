#ifndef COORDINATESOFOBJECTS_H
#define COORDINATESOFOBJECTS_H
#include <QObject>
#include <QQuickItem>
#include <QSharedDataPointer>
class coordinatesofobjects:public QObject
{
Q_OBJECT
private:
    struct coordinates
    {
        int x, y;
    }
    pos;
protected:
  Q_INVOKABLE  int setPos(int xVal, int yVal);
public:
    int getPosX();
    int getPosY();

};



#endif // COORDINATESOFOBJECTS_H


