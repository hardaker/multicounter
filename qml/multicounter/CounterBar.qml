import QtQuick 1.1

Rectangle {
    id: counterbar
    height:whotitle.height + plus.height + 40
    anchors.horizontalCenter: parent.horizontalCenter
    color: "#ffffff"
    width: parent.width

    property int value: 0
    property int textHeight: 80
    property string who: "person"

    Rectangle {
        id: whotitle
        color: "#bbffbb"
        anchors.top: parent.top
        width: parent.width
        height: whotext.height + 10
        anchors.margins: 5

        Text {
            id: whotext
            text: who
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
        MouseArea {
            anchors.fill: parent
            onClicked: value -= 1
        }
    }
}
