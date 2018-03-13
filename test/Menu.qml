import QtQuick 2.0

Rectangle {
    anchors.fill: parent

    Image
    {
        id: image
        source: "menu_fon.jpeg"
        anchors.fill: parent
    }

        signal gameExit
        signal gameStart
        signal gameOptions

    Column {
        id: column
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Button {
            id: button

            text: "Новая игра"
            onClicked: {
                game.state = "game"
            }
        }

        Button {
            id: button1
            text: "Настройки"
            onClicked: {
                menu.gameOptions()

            }
        }

        Button {
            id: button2
            text: "Выход"
            onClicked: menu.gameExit()

        }
    }
}
