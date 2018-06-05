import com.satus 1.0
import QtQuick 2.0
import com.myself 1.0
Item {
    id: badchelovechek
    width:50
    height:50
    property int xbVelocity: 0
    property int ybVelocity: 0
    property vector2d direction: Qt.vector2d(1,0)

    function changeDirection(ax, ay)
    {
        direction = Qt.vector2d(ax - x, ay - y)
        xbVelocity = direction.x * 0.01
        ybVelocity = direction.y * 0.01
        if(direction.x<0)
        {
         ff.jumpTo(left)

    }


    }

    SpriteSequence {
        id:ff
        anchors.centerIn: parent
        width:36
        height:46
        Sprite
        {
            name: "stand"
            source:"image/estand.png"
            frameHeight:46
            frameWidth:36
                frameCount:1
                frameDuration:120
        }

        Sprite{
            name: "run"
            source: "image/E_right.png"

            frameHeight:46
            frameWidth:36

            frameCount:6
            frameDuration:120


        }

        Sprite{
            name: "attack"
            source: "image/fightE.png"

            frameHeight:45
            frameWidth:46

            frameCount:2
            frameDuration:120
            to: {"stand" : 1}

        }
        Sprite{
            name: "left"
            source: "image/E_left.png"

            frameHeight:46
            frameWidth:36

            frameCount:6
            frameDuration:120


        }
    }


    Timer {

        interval: 5
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: {
            badchelovechek.x += xbVelocity
            badchelovechek.y += ybVelocity

        }
    }









}




