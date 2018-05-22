import com.satus 1.0
import com.myself 1.0
import com.Enemy 1.0
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

Component.onCompleted: {x = coord.getPosX() + 55;
                        y = coord.getPosY() + 66;
}

 focus:true

  }
    Coordinatesofobjects
    {
        id:coord
    }


}








