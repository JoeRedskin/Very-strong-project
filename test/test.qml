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
        source: "Roland-JV-2080-Nylon-Gtr-C3.wav"
    }
    MouseArea {
        id: playArea
        onPressed: { playSound.play() }
    }




    Item{


      id: item1





      MediaPlayer {
            id: playMusic
            source: "12.wav"

        }
      MouseArea {
            id: play
            anchors.fill: parent
            onPressed:  { playMusic.play() }
        }









      anchors.fill: parent
        



      Menu {




            id: menu

            onGameStart: {parent.state = "gameplay"; playSound.play()}
            onGameOptions: {parent.state = "options"; playSound.play()}
            onGameExit: Qt.quit()
        }
        Gameplay {
<<<<<<< HEAD
            id: gameplay
            //onMenu: parent.state = "menu"
        }
        Opt {
            id: options
            onGoMenu: parent.state = "menu"
=======
                  id: gameplay
            onGoMenu: {parent.state = "menu";playSound.play()}
        }
        Opt {
            id: options
            onGoMenu:{ parent.state = "menu";playSound.play()}
>>>>>>> TestWork
            onGameExit: Qt.quit()
        }

  states: [
            State {
                name: "menu"
                PropertyChanges {target: menu; visible: true}
                PropertyChanges {target: gameplay; visible: false}
                PropertyChanges {target: options; visible: false}
            },
            State {
                name: "gameplay"
                PropertyChanges {target: menu; visible: false}
                PropertyChanges {target: gameplay; visible: true}
                PropertyChanges {target: options; visible: false}
            },
            State {
                name: "options"
                PropertyChanges {target: menu; visible: false}
                PropertyChanges {target: gameplay; visible: false}
                PropertyChanges {target: options; visible: true}
            }
        ]

        state: "menu"

    }
}
