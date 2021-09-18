import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int size: 200
    property int padding_top: 30
    onActiveFocusChanged: anim.restart()
    Rectangle {
        id: rec
        color: "green"; width: size; height: size
        anchors.horizontalCenter: page.horizontalCenter
        y: padding_top
    }

    ParallelAnimation {
        id: anim
        PropertyAnimation {
            target: rec
            property: "scale"
            from: rec.scale; to: rec.scale * 2; duration: 2000
        }
        PropertyAnimation {
            target: rec
            property: "y"
            from: rec.y; to: page.height + size; duration: 2500
        }
    }
}
