#include "herocontrol.h"
#include "statusofobject.h"
#include "coordinatesofobjects.h"
#define HEALTH 100
//Work in progress
//To DO:
/* - Уровни персонажа
   - Спец навыки
   -Доспехи
   -Улучшения меча
*/

unsigned int herocontrol::getLvl()
{
    return Lvl;
}

bool herocontrol::isNewLevel(unsigned int Xp)
{
    if(Xp >= getLvl()*100)
        return true;
    return false;
}

void herocontrol::Level()
{
    Exp = currentExp();
    if(isNewLevel(Exp))
    {
        Lvl = (int)Exp/100;
    }
}
