import QtQuick 1.0

// wrapper just for meego/harmattan to set up the screen correctly

import com.nokia.meego 1.0
PageStackWindow {
    showStatusBar: false
    showToolBar: false
    initialPage: Page {
        orientationLock: PageOrientation.LockPortrait
        Main { anchors.fill: parent }
    }
}
