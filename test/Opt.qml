import QtQuick 2.0

Rectangle {
    id: opt

    anchors.fill: parent

    Image
    {
        id: image
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        source: "menu_fon.jpeg"
        anchors.fill: parent
    }

        signal goMenu
        signal gameExit

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

            text: "Графика"
            onClicked: {
                game.state = "game"
            }
        }

        Button {
            id: button1
            text: "Музыка"
            onClicked: {
                opt.gameOptions()

            }
        }

        Button {
            id: button2
            text: "Назад"
            onClicked: opt.goMenu()

        }

        Button {
            id: button3
            text: "Выход"
            onClicked: opt.gameExit()
        }
    }
}
