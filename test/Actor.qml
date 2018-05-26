import QtQuick 2.0

Item {
    id: chelovechek
<<<<<<< HEAD
    width:50
    height:50
    property int xVelocity: 0
    property int yVelocity: 0
    SpriteSequence {
        id:ss
        anchors.centerIn: parent
        width:36
        height:47
        Sprite
        {
            name: "stand"
            source:"image/stand.png"
            frameHeight:47
            frameWidth:36
                frameCount:1
                frameDuration:120
        }

        Sprite{
            name: "run"
            source: "image/Hero.png"

            frameHeight:47
            frameWidth:36

            frameCount:6
            frameDuration:120


        }

        Sprite{
            name: "attack"
            source: "image/Fight.png"

            frameHeight:45
            frameWidth:46

            frameCount:2
            frameDuration:120
            to: {"stand" : 1}

        }
        Sprite{
            name: "left"
            source: "image/left.png"

            frameHeight:47
            frameWidth:54

            frameCount:6
            frameDuration:120


        }
    }


    Timer {
=======
    property int xVelocity: 0
    property int yVelocity: 0
    Image {
    source: "image/skidadle.png"

   }


  Timer {
>>>>>>> master

        interval: 5
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: {
            chelovechek.x += xVelocity
            chelovechek.y += yVelocity

        }
    }


<<<<<<< HEAD
    Keys.onPressed: {

        if (event.isAutoRepeat)
        {
            return;
        }



        switch (event.key) {
        case Qt.Key_Left:
            xVelocity -= 1
               ss.jumpTo("left")
            break;

        case Qt.Key_Right:
            xVelocity += 1
            ss.jumpTo("run")
            break;


        case Qt.Key_Down:
            yVelocity += 1
            break;
        case Qt.Key_Up:
            yVelocity -= 1
            break;
        case Qt.Key_Q:
            ss.jumpTo("attack")
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
            ss.jumpTo("stand")
            break;
        case Qt.Key_Right:
            xVelocity -= 1
            ss.jumpTo("stand")
            break;

        case Qt.Key_Down:
            yVelocity -= 1
            break;
        case Qt.Key_Up:
            yVelocity += 1
            break;




        }
    }

=======
>>>>>>> master
}






















<<<<<<< HEAD

=======
>>>>>>> master
