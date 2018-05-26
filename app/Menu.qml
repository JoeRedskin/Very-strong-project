import QtQuick 2.0

Rectangle {
    anchors.fill: parent

    Image
    {
        source: "image/menu_fon.jpeg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

        signal gameExit
        signal gameStart
        signal gameOptions
        signal gameMusic

    Column {
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        ButtonT {
            text: "Новая игра"
            onClicked: {menu.gameStart()}
        }

        ButtonT {
            text: "Настройки"
            onClicked: {menu.gameOptions() }
        }

        ButtonT {
            text: "Выход"
            onClicked: menu.gameExit()
        }
    }
}
