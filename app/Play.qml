import com.Status 1.0
import com.Coord 1.0
import com.Hero 1.0

import QtQuick 2.9
import QtMultimedia 5.9
Rectangle {

    signal goMenu

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

        id: enemy
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

        onXChanged: enemy.changeDirection(x, y)
        onYChanged: enemy.changeDirection(x, y)


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




    Keys.onPressed: {
        if (event.isAutoRepeat){
            return;
        }

        switch (event.key) {
        case Qt.Key_Escape:
            if(gameMenu.visible == false)
                gameMenu.visible = true;
            else
                gameMenu.visible = false;
            break;
        case Qt.Key_I:
            if(heroInventory.visible == false)
                heroInventory.visible = true;
            else
                heroInventory.visible = false;
            break;


        }
    }


    //gameMenu
    Column
    {
            id: gameMenu
            visible: false
            width: 300
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5

            ButtonT {
                text: "Продолжить"
                onClicked: {gameMenu.visible = false} }

            ButtonT {
                text: "Выход в меню"
                onClicked:  playing.goMenu() }
     }

    //inventory

    Item
    {
        id:heroInventory
        x: 0
        y: 0
        width: 1280
        height: 800
        visible: false
        Image
        {

            id:heroMenu
            anchors.leftMargin: 196
            anchors.rightMargin: 780
            anchors.topMargin: 251
            anchors.bottomMargin: 251
            source: "image/hero_menu.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
        Image
        {

            id:inventory
            anchors.leftMargin: 726
            anchors.topMargin: 141
            anchors.rightMargin: 265
            anchors.bottomMargin: 219
            source: "image/invent.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

}


