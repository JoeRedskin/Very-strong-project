import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id: mainWindow

    title: qsTr("Adventures of knight")
    visible: true
    width: 1280
    height: 720
    property alias column: column
    property alias button: button


    Item{
        id: item1

        anchors.fill: parent



        Image
        {
            source: "menu.jpeg"
            anchors.fill: parent
        }



        Column {
            id: column
            width: 300
            anchors.verticalCenterOffset: 12
            anchors.horizontalCenterOffset: -416
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5

            Button {
                id: button
                width: 300
                height: 50

                text: "Новая Игра"
                textColor: "purple"
                backgroundColor: "red"
                activeBackgroundColor: "blue"

            }

            Button {
                text: "Настройки"
            }

            Button {
                text: "Выход"
            }
        }


    }
}
