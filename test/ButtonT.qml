/**
 * Button.qml - A part of the implementation of the RoShamBo
 * (Rock-Paper-Scissors game) with QtQuick technology
 *
 * This code is verified to be working with Qt 5.5
 *
 * Copyright (c) 2016, Alexander Borodin, aborod@petrsu.ru
 *
 * This code is licensed under MIT-style license
 */

import QtQuick 2.0

Item {
    width: 300
    height: 50

    property string text: ""
    property color textColor: "white"
    property color backgroundColor: "white"
    property color activeBackgroundColor: "gray"
    signal clicked

    Rectangle {

        id: r
        anchors.fill: parent
        color: backgroundColor
        opacity: 0.2
        radius: 10
    }

    Text {
        id: t
        text: parent.text
        anchors.centerIn: parent
        font.pointSize: 20
        color: textColor
    }

    MouseArea {
        anchors.fill: parent
        onPressed: r.color = activeBackgroundColor
        onReleased: r.color = backgroundColor
        onClicked: parent.clicked()
    }
}









