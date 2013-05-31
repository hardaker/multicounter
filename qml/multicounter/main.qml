import QtQuick 1.1

Flickable {
    width:  400
    height: 800
    contentHeight: maincontent.height
    contentWidth: maincontent.width
    id: top

    Rectangle {
        id: maincontent
        color: "white"
        height: toptitle.height + counters.height
        width: 400
        anchors.top: parent.top
        anchors.left: parent.left

        Text {
            id: toptitle
            text: qsTr("Count It")
            font.pixelSize: 60
            color: "#0000aa"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: counters
            width: parent.width
            anchors.bottom: maincontent.bottom
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
}
