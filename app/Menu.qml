import QtQuick 2.0

Rectangle {
    anchors.fill: parent

    Image
    {
        id: image
        source: "image/menu_fon.jpeg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

        signal gameExit
        signal gameStart
        signal gameOptions
        signal gameMusic

    Column {
        id: column
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        ButtonT {
            id: button; text: "Новая игра"
            onClicked: {menu.gameStart()}
        }

        ButtonT {
            id: button1; text: "Настройки"
            onClicked: {menu.gameOptions() }
        }

        ButtonT {
            id: button2; text: "Выход"
            onClicked: menu.gameExit()
        }
    }
}
