import QtQuick 2.0

Item {
    id: chelovechek
    property int  xVelocity: 0
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

            //                            if (xVelocity < 0) r.jumpTo("left");
            //                            else if (xVelocity > 0) r.jumpTo("right")
        }
    }
    anchors.fill: parent
    focus:  true
    Keys.onRightPressed:{console.log("move Right")
        chelovechek.x+=10
    }
    Keys.onLeftPressed: {
        chelovechek.x-=10
    }
    Keys.onDownPressed: { chelovechek.y+=10
    }
    Keys.onUpPressed:
    {chelovechek.y-=10
    }
}
