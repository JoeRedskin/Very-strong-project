import QtQuick 2.0

Item {
    id: chelovechek
    property int xVelocity: 0
    property int yVelocity: 0
    Image {
    source: "image/skidadle.png"

   }


  Timer {

        interval: 5
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: {
            chelovechek.x += xVelocity
            chelovechek.y += yVelocity

        }
    }


}






















