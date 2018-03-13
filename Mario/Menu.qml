import QtQuick 2.0
import QtQuick.Layouts 1.0

Rectangle {
    id: menu
    width: 800
    height: 600

    signal gameStarted

    Image {
        id: back
        source: "back.jpg"
        width: 800
        height: 600
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 5
        Button {
            text: "Начать игру"
            onClicked: menu.gameStarted()
        }
        Button {
            text: "Выход"
            onClicked: {
                Qt.quit()
            }
        }
    }
}
