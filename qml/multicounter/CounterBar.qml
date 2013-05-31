import QtQuick 1.1

Rectangle {
    id: counterbar
    height:whotitle.height + plus.height + 20
    anchors.horizontalCenter: parent.horizontalCenter
    color: "#ffffff"
    width: parent.width
    z: -10

    property int value: 0
    property int textHeight: 80
    property alias who: whotext.text
    property string imagesrc: ""

    Image {
        id: whoimage
        source: who == "Ed" ? "qrc:/images/ed.png" : imagesrc
        height: parent.height * ( 1 + value/10)
        anchors.right: parent.right
        anchors.top: parent.top
        fillMode: Image.PreserveAspectFit
        z: 1
        Behavior on height {
          NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }

    Rectangle {
        id: whotitle
        color: "#bbffbb"
        anchors.top: parent.top
        width: parent.width
        height: whotext.height + 10
        anchors.margins: 5
        z: 0

        TextInput {
            id: whotext
            text: "person"
            font.pixelSize: textHeight/3
            anchors.centerIn: parent
            z: 1
        }
    }

    Text {
        id: plus
        text: "+"
        anchors.top: whotitle.bottom
        anchors.left: parent.left
        font.pixelSize: textHeight
        anchors.leftMargin: 10
        z: 10
        MouseArea {
            anchors.fill: parent
            onClicked: value += 1
        }
    }
    Text {
        id: theValue
        text: value
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: whotitle.bottom
        font.pixelSize: textHeight
        z: 10
        MouseArea {
            anchors.fill: parent
            onClicked: value = 0
        }
    }

    Text {
        text: "-"
        anchors.right: parent.right
        anchors.top: whotitle.bottom
        font.pixelSize: textHeight
        anchors.rightMargin: 10
        z: 10
        MouseArea {
            anchors.fill: parent
            onClicked: value -= 1
        }
    }
}
