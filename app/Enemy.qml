import com.satus 1.0
import QtQuick 2.0
import com.myself 1.0
Item {
    id: badchelovechek
    width:50
    height:50
    property int xVelocity: 0
    property int yVelocity: 0
    SpriteSequence {
        id:ff
        anchors.centerIn: parent
        width:36
        height:47
        Sprite
        {
            name: "stand"
            source:"image/estand.png"
            frameHeight:51
            frameWidth:47
                frameCount:1
                frameDuration:120
        }

        Sprite{
            name: "run"
            source: "image/right22.png"

            frameHeight:49
            frameWidth:55

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
            source: "image/DDDD.png"

            frameHeight:50
            frameWidth:32

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
            badchelovechek.x += xVelocity
            badchelovechek.y += yVelocity

        }
    }


    Keys.onPressed: {

        if (event.isAutoRepeat)
        {
            return;
        }



        switch (event.key) {
        case Qt.Key_Left:
            xVelocity -= 1
               ff.jumpTo("left")
            break;

        case Qt.Key_Right:
            xVelocity += 1
            ff.jumpTo("run")
            break;


        case Qt.Key_Down:
            yVelocity += 1
            break;
        case Qt.Key_Up:
            yVelocity -= 1
            break;
        case Qt.Key_Q:
           ff.jumpTo("attack")
            break;


        }
    }


    Keys.onReleased: {
        if (event.isAutoRepeat) {
            return;
        }
        switch (event.key) {
        case Qt.Key_Left:
            xVelocity += 1
            ff.jumpTo("stand")
            break;
        case Qt.Key_Right:
            xVelocity -= 1
            ff.jumpTo("stand")
            break;

        case Qt.Key_Down:
            yVelocity -= 1
            break;
        case Qt.Key_Up:
            yVelocity += 1
            break;




        }
    }




}




