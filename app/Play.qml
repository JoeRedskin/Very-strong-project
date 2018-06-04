import com.satus 1.0
import com.myself 1.0

import QtQuick 2.9
import QtMultimedia 5.9
Rectangle {
    anchors.fill: parent

    Image
    {

        id:playimage
        source: "image/new_trava.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }



    Actor
    {

Component.onCompleted: {coord.take(99,44);
    x=coord.getPosX();
       y=coord.getPosY();


}

Enemy
{

Component.onCompleted: { ecoord.take(59,7);
    x=ecoord.getPosX();
    y=ecoord.getPosY();


}




focus:true

  }
    Coordinatesofobjects
    {
        id:coord

    }


    Coordinatesofobjects
    {
        id:ecoord

    }


}









}
