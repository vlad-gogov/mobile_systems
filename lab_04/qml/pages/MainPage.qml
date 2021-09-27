import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        columns: 2
        rows: 2
        spacing: 40
        anchors.centerIn: page

        Button {
            text: qsTr("Button Count")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ButtonCount.qml"))
        }

        Button {
            text: qsTr("Date Time")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("DateTime.qml"))
        }

        Button {
            text: qsTr("Switch Slider")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("SwitchSlider.qml"))
        }

    }
}
