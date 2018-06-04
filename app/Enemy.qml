import com.satus 1.0
import QtQuick 2.0
import com.myself 1.0
Item {
    id: badchelovechek
    width:50
    height:50
    property int xbVelocity: 0
    property int ybVelocity: 0
    SpriteSequence {
        id:ff
        anchors.centerIn: parent
        width:44
        height:50
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
            source: "image/NEW.png"

            frameHeight:47
            frameWidth:63

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


    Keys.onPressed: {

        if (event.isAutoRepeat)
        {
            return;
        }



        switch (event.key) {
        case Qt.Key_Left:
            xbVelocity -= 1
               ff.jumpTo("left")
            break;

        case Qt.Key_Right:
            xbVelocity += 1
            ff.jumpTo("run")
            break;


        case Qt.Key_Down:
            ybVelocity += 1
            break;
        case Qt.Key_Up:
            ybVelocity -= 1
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
            xbVelocity += 1
            ff.jumpTo("stand")
            break;
        case Qt.Key_Right:
            xbVelocity -= 1
            ff.jumpTo("stand")
            break;

        case Qt.Key_Down:
            ybVelocity -= 1
            break;
        case Qt.Key_Up:
            ybVelocity += 1
            break;




        }
    }




}




