import QtQuick 2.0

Rectangle {
    id:gameplay

    signal goMenu
    anchors.fill: parent
    Image
    {
        id: image
        source: "image/Map.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    ButtonT {
        id: buttonT
        x: 0
        y: 430
        width: 114
        height: 50
        text: "Назад"
        onClicked: gameplay.goMenu()
    }

}
