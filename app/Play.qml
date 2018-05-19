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
        x:{coord.getPosX(100)
            coord.setPos()
        }
        y:{
        coord.setPos(100,100)

        }




        focus: true




    }
    Coordinatesofobjects
    {
     id:coord
    }


}








