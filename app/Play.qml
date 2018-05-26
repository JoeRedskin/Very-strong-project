
import QtQuick 2.9
import QtMultimedia 5.9
import QtQuick.Controls 2.2
Rectangle {
    id: play
    anchors.fill: parent

    Keys.onPressed: {

        if (event.isAutoRepeat) return;

        switch (event.key) {

        case Qt.Key_Escape:
            play.state = "game_menu";
            break;
        }
    }

    signal goMenu
    signal gameOptions
    signal gameExit

    Image
    {
        id:all
        source: "image/new_trava.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop

        ProgressBar {
            id: progressBar
            x: 0
            y: 453
            width: 177
            height: 48
            spacing: 2
            font.pointSize: 8
            from: 0
            font.weight: Font.Normal
            font.capitalization: Font.MixedCase
            value: 0.4
        }
    }


    Actor{
        x:81
        y:269

        focus: true
    }

    Column {
        id: game_menu
        width: 300
        height: 248
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Text {
            x: 90
            width: 100
            color: "#ffffff"
            text: qsTr("Пауза")
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.NoWrap
            font.pixelSize: 32
        }

       // ButtonT { text: "Опции"; onClicked:{ play.gameOptions(); playSound.play()}}

        ButtonT { text: "Назад"; onClicked:{ play.state = "all"; playSound.play()}}

        ButtonT { text: "Главное меню"; onClicked:{ play.goMenu(); playSound.play()}}

        ButtonT { text: "Выйти из игры"; onClicked: play.gameExit()}
    }


    states: [
        State {
            name: "all"
            PropertyChanges {target: all; visible: true}
           // PropertyChanges {target: mini_map; visible: false}
           // PropertyChanges {target: inventory; visible: false}
            PropertyChanges {target: game_menu; visible: false}
        },
     /*   State {
            name: "mini_map"
            PropertyChanges {target: all; visible: true}
            PropertyChanges {target: mini_map; visible: true}
            PropertyChanges {target: inventory; visible: false}
            PropertyChanges {target: game_menu; visible: false}
        },*/
        /*State {
            name: "item"
            PropertyChanges {target: all; visible: true}
            PropertyChanges {target: mini_map; visible: false}
            PropertyChanges {target: itnventory; visible: true}
            PropertyChanges {target: game_menu; visible: false}
        },*/
        State {
            name: "game_menu"
            PropertyChanges {target: all; visible: true}
           // PropertyChanges {target: mini_map; visible: false}
           // PropertyChanges {target: item; visible: false}
            PropertyChanges {target: game_menu; visible: true}
        }
    ]
    state: "all"
}
