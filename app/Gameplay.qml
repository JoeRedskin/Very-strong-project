import QtQuick 2.0

Rectangle {
    id:gameplay

    signal goMenu
    signal changeCity

    property alias travel: travel
    anchors.fill: parent

    Image{
           source: "image/Map_v3.0.png"
           anchors.fill: parent
           fillMode: Image.PreserveAspectCrop
    }


    ButtonT {
              x: 0; y: 670
              width: 114; height: 50
              text: "Назад"
              onClicked: {
                gameplay.goMenu()
                travel.visible = false
                pole.visible = true
              }
    }

    Item { id: pole
           width: 200
           height: 200
           anchors.fill: parent
           ButtonT {
                x: 188
                y: 254
                width: 26
                height: 27
                clip: false
                backgroundColor: qsTr("#ffffff")
                onClicked:{ travel.visible = true; pole.visible = false}
           }
    }

    Rectangle { id: travel
                x: 468
                y: 70
                width: 379
                height: 478
                color: "#ffffff"
                visible: false
                Image{
                       anchors.rightMargin: -155
                       anchors.leftMargin: -155
                       anchors.bottomMargin: -53
                       anchors.topMargin: -53
                       source: "image/svitok.png"
                       anchors.fill: parent
                }

                Text {
                       x: -12
                       y: 122
                       width: 403
                       height: 234
                       text: "Ну че, готов к приключениям?"
                       wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                       styleColor: "#da0a0a"
                       font.pixelSize: 25
                }

                ButtonT {
                       x: 40
                       y: 373
                       text: "Гоу ту зе джорни"
                       onClicked: gameplay.changeCity()
                }
        }
    }
