import QtQuick 2.0

Rectangle {
    //id:gameplay

    signal goMenu
    signal changeCity


    property alias travel: travel
    anchors.fill: parent
    Image
    {
        id: startmap
        source: "image/Map_v3.0.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }


    ButtonT {
        id: nazadmenu
        x: 0; y: 737
        width: 182; height: 63
        text: "Назад"
        onClicked: {
            gameplay.goMenu()
            travel.visible = false
            pole.visible = true
        }
    }

    Item {
        id: pole
        width: 200
        height: 200
        anchors.fill: parent
        ButtonT {
            id: buttonT1
            x: 185
            y: 291
            width: 26
            height: 27
            clip: false
            backgroundColor: qsTr("#ffffff")
            visible: true
            onClicked:{ travel.visible = true; pole.visible = false}
        }

        ButtonT {
            id: buttonT2
            x: 596
            y: 577
            width: 26
            height: 27
            visible: false
        }

        ButtonT {
            id: buttonT3
            x: 855
            y: 190
            width: 26
            height: 27
            visible: false
        }


    }

    Rectangle {
        id: travel
        x: 468
        y: 70
        width: 379
        height: 478
        color: "#ffffff"
        visible: false
        Image
        {
            id: svitok
            anchors.rightMargin: -155
            anchors.leftMargin: -155
            anchors.bottomMargin: -53
            anchors.topMargin: -53
            visible: true
            source: "image/svitok.png"
            anchors.fill: parent
            //fillMode: Image.PreserveAspectCrop
        }

        Text {
            id: text1
            x: -12
            y: 122
            width: 403
            height: 234
            text: "Ну че, готов к приключениям?"
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            styleColor: "#da0a0a"
            visible: true
            font.pixelSize: 25
        }

        ButtonT {
            id: buttonT4
            x: 40
            y: 373
            text: "Гоу ту зе джорни"
            visible: true
            onClicked: gameplay.changeCity()
        }
    }



}
