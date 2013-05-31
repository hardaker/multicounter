import QtQuick 1.0

// wrapper just for meego/harmattan to set up the screen correctly

import com.nokia.meego 1.0
PageStackWindow {
showStatusBar: false
showToolBar: false
   initialPage: Page {
      orientationLock: PageOrientation.LockPortrait
      //maint { anchors.fill: parent }
      anchors.fill: parent
Flickable {
    anchors.fill: parent
Rectangle {
    anchors.fill: parent
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
        anchors.top: toptitle.bottom
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
}
}
