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


    Actor {
        x: 100
        y: 100
    }
}





