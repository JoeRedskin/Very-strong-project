import QtQuick 2.0

Rectangle {
    anchors.fill: parent

    Image
    {
        id: image
        source: "menu.jpeg"
        anchors.fill: parent
    }


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
            textColor: "purple"
            backgroundColor: "red"
            activeBackgroundColor: "blue"
        }

        Button {
            id: button1
            text: "Настройки"
            onClicked: {
                item1.state = "options"
            }
        }

        Button {
            id: button2
            text: "Выход"
            onClicked: Qt.quit()
        }
    }
}
