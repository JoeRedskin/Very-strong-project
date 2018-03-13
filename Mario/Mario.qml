import QtQuick 2.2

Rectangle {
    width: 800
    height: 600

    Menu {
        id: menu
        onGameStarted: parent.state = "gameplay"
    }

    Gameplay {
        id: gameplay
        onGameStopped: parent.state = "menu"
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
        }
    ]

    state: "menu"
}














