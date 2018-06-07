import com.Status 1.0
import com.Coord 1.0
import com.Hero 1.0

import QtQuick 2.9
import QtMultimedia 5.9
Rectangle {
    anchors.fill: parent

    Image
    {

        id:playimage
        anchors.bottomMargin: 0
        source: "image/new_trava.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    Enemy
    {

        //id: enemy
        //focus:true
        Component.onCompleted: { ecoord.take(50,50);
            x=ecoord.getPosX();
            y=ecoord.getPosY();


        }
    }

    Herocontrol {id: hero1}
    Actor
    {
        focus:true
        Component.onCompleted: {coord.take(50,40);
            x=coord.getPosX();
            y=coord.getPosY();

        }

        /*onXChanged: enemy.changeDirection(x, y)
        onYChanged: enemy.changeDirection(x, y)*/


        Coordinatesofobjects {id:coord}
        Coordinatesofobjects {id:ecoord}
    }
    Rectangle {
        id: heroHP
        x: 0
        y: 0
        width: hero1.currentHealth()
        height: 20
        color: "#e40000"
    }
}
