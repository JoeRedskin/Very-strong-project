import QtQuick 2.9
import QtMultimedia 5.9
Rectangle {
    anchors.fill: parent

    Image
           {

        id:playimage
        source: "image/travka2.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }



    Actor
    {
x:100
y:100

Keys.onPressed: {

            if (event.isAutoRepeat) {
                            return;
                       }



    switch (event.key) {
                       case Qt.Key_Left:
                           xVelocity -= 1
                           break;
                       case Qt.Key_Right:
                           xVelocity += 1
                           break;


                       case Qt.Key_Down:
                           yVelocity -= 1
                           break;
                       case Qt.Key_Up:
                           yVelocity += 1
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
                           break;
                       case Qt.Key_Right:
                           xVelocity -= 1
                           break;

                       case Qt.Key_Down:
                           yVelocity += 1
                           break;
                       case Qt.Key_Up:
                           yVelocity -= 1
                           break;




                       }
}


}






















}








