import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int size: 250
        Rectangle {
            id: redRec
            color: "red"
            x: 40
            y: 40
            width: size; height: size
        }
        Rectangle {
            id: greenRec
            color: "green"
            anchors.left: redRec.right
            anchors.top: redRec.verticalCenter
            width: size; height: size
        }
        Rectangle {
            id: blueRec
            color: "blue"
            anchors.bottom: greenRec.verticalCenter
            anchors.left: greenRec.horizontalCenter
            width: size; height: size
            Text {
                text: "Квадрат"
                color: "white"
                anchors.centerIn: parent
                font.pixelSize: 40
            }
        }
}
