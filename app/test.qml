import QtQuick 2.9
import QtQuick.Window 2.3
import QtMultimedia 5.9

Window {
    id: mainWindow

    title: qsTr("Adventures of knight")
    visible: true
    width: 1280
    height: 720
    maximumWidth: 1280
    maximumHeight: 720
    minimumWidth: 360
    minimumHeight: 240

    SoundEffect {
        id: playSound
        source: "Fon_menu.wav"
    }
    MouseArea {
        id: playArea
        onPressed: { playSound.play() }
    }

    Item{
      id: item1
      MediaPlayer {id: playMusic; source: "roland.wav"}
      MouseArea {
            id: play
            anchors.fill: parent
            onPressed: { playMusic.play() }
        }
      anchors.fill: parent

      Menu {
            id: menu
            onGameStart: {parent.state = "gameplay"; playSound.play()}
            onGameOptions: {parent.state = "options"; playSound.play()}
            onGameExit: Qt.quit()
        }
        Gameplay {
            id: gameplay
            onGoMenu: {parent.state = "menu";playSound.play()}
            onChangeCity: {parent.state = "playing";playSound.play()}
        }
        Opt {
            id: options
            onGoMenu:{ parent.state = "menu";playSound.play()}
            onGameExit: Qt.quit()
        }
        Play{
            id: playing

        }

  states: [
            State {
                name: "menu"
                PropertyChanges {target: menu; visible: true}
                PropertyChanges {target: gameplay; visible: false}
                PropertyChanges {target: options; visible: false}
                PropertyChanges {target: playing; visible: false}
            },
            State {
                name: "gameplay"
                PropertyChanges {target: menu; visible: false}
                PropertyChanges {target: gameplay; visible: true}
                PropertyChanges {target: options; visible: false}
                PropertyChanges {target: playing; visible: false}
            },
            State {
                name: "options"
                PropertyChanges {target: menu; visible: false}
                PropertyChanges {target: gameplay; visible: false}
                PropertyChanges {target: options; visible: true}
                PropertyChanges {target: playing; visible: false}
            },
            State {
                name: "playing"
                PropertyChanges {target: menu; visible: false}
                PropertyChanges {target: gameplay; visible: false}
                PropertyChanges {target: options; visible: false}
                PropertyChanges {target: playing; visible: true}
              }
        ]

        state: "menu"
    }
}
