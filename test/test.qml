import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id: mainWindow

    title: qsTr("Adventures of knight")
    visible: true
    width: 1280
    height: 720


    Item{
        id: item1

        anchors.fill: parent
        
        Menu {
            id: menu         
            onGameStart: parent.state = "gameplay"
            onGameOptions: parent.state = "options"
            onGameExit: parent.state = "exit"
        }
        Gameplay {
            id: gameplay
            //onGameStopped: parent.state = "menu"
        }
        Opt {
            id: options
            //onClicked: parent.state = "menu"
        }


        states: [
            State {
                name: "menu"
                PropertyChanges {
                    target: menu
                    visible: true
                }
                PropertyChanges {
                    target: gameplay
                    visible: false
                }
                PropertyChanges {
                    target: options
                    visible: false
                }
            },
            State {
                name: "gameplay"
                PropertyChanges {
                    target: menu
                    visible: false
                }
                PropertyChanges {
                    target: gameplay
                    visible: true
                }
                PropertyChanges {
                    target: options
                    visible: false
                }
            },
            State {
                name: "options"
                PropertyChanges {
                    target: menu
                    visible: false
                }
                PropertyChanges {
                    target: gameplay
                    visible: false
                }
                PropertyChanges {
                    target: options
                    visible: true
                }
            }
        ]

        state: "menu"
    }
}
