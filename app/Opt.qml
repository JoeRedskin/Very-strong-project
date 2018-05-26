import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle {
    id: opt
    anchors.fill: parent
    Image
    {
        id: image
        x: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        source: "image/menu_fon.jpeg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }
    signal goMenu
    signal gameExit

    Column {
        id: option
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5
        ButtonT {id: button; text: "Графика"
            onClicked: {opt.state = "graphics";playSound.play()}
        }

        ButtonT {
            id: button1; text: "Музыка"
            onClicked: {opt.state = "music";playSound.play()}
        }

        ButtonT {
            id: button2; text: "Авторы"
            onClicked: {opt.state = "autors";playSound.play()}
        }

        ButtonT {
            id: button3; text: "Назад";
            onClicked: {opt.goMenu();playSound.play()}
        }
    }

    Column{
        id: music
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Text {
            id: text1
            width: 298
            height: 37
            color: "#ffffff"
            text: qsTr("Музыка")
            horizontalAlignment: Text.AlignHCenter
            renderType: Text.NativeRendering
            font.pixelSize: 45
        }

        Slider {
            id: slider
            x: 0
            width: 300
            from: 1
            stepSize: 0.1
            to: 0
            font.family: "Times New Roman"
            spacing: -2
            focusPolicy: Qt.NoFocus
            value: 0.3
        }

        Switch {
            id: switch1
            width: 100
            text: "Звук"
            autoExclusive: false
            focusPolicy: Qt.ClickFocus
            transformOrigin: Item.Center
        }

        ButtonT {
            id: buttonM1; text: "Назад"
            onClicked: {opt.state = "option";playSound.play()}
        }
    }

    Column {
        id: graphics
        width: 300
        height: 182
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Text {
            id: text2
            x: 90
            width: 100
            color: "#ffffff"
            text: qsTr("Графика")
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.NoWrap
            font.pixelSize: 32
        }

        ButtonT {
            id: buttonT; text: "просто проверка "
        }

        ButtonT {
            id: buttonG1; text: "Назад"
            onClicked: {opt.state = "option";playSound.play()}
        }


    }

    Column {
        id: autors
        width: 300
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Text {
            id: autrors_TEXT
            width: 300
            height: 308
            color: "#ffffff"
            text: qsTr("Text")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
        }

        ButtonT {
            id: buttonA1; text: "Назад"
            width: 100; height: 35
            onClicked: {opt.state = "option";playSound.play()}
        }
    }

    states: [
        State {
            name: "option"
            PropertyChanges {target: option; visible: true}
            PropertyChanges {target: graphics; visible: false}
            PropertyChanges {target: music; visible: false}
            PropertyChanges {target: autors; visible: false}
        },
        State {
            name: "graphics"
            PropertyChanges {target: option; visible: false}
            PropertyChanges {target: graphics; visible: true}
            PropertyChanges {target: music; visible: false}
            PropertyChanges {target: autors; visible: false}
        },
        State {
            name: "music"
            PropertyChanges {target: option; visible: false}
            PropertyChanges {target: graphics; visible: false}
            PropertyChanges {target: music; visible: true}
            PropertyChanges {target: autors; visible: false}
        },
        State {
            name: "autors"
            PropertyChanges {target: option; visible: false}
            PropertyChanges {target: graphics; visible: false}
            PropertyChanges {target: music; visible: false}
            PropertyChanges {target: autors; visible: true}
        }
    ]
    state: "option"
}
