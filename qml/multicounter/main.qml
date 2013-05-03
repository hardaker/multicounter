import QtQuick 1.1

Rectangle {
    width:  400
    height: 800
    id: top
    color: "white"
    Text {
        id: toptitle
        text: qsTr("Count It")
        font.pixelSize: 60
        color: "#0000aa"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        width: parent.width
        anchors.bottom: top.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        //height: parent.height - toptitle.height - 20
        CounterBar {
            who: "Wes"
        }
        CounterBar {
            who: "Ed"
            imagesrc: "qrc:/images/ed.png"
        }
        CounterBar {
            who: "Jason"
        }
        CounterBar {
            who: "Steve"
        }
    }
}
