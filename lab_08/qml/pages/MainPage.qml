import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        columns: 1
        rows: 2
        spacing: 20
        anchors.centerIn: page

        Button {
            text: qsTr("Counter")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("CounterPage.qml"))
        }

        Button {
            text: qsTr("Dictionary")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Dictionary.qml"))
        }

    }
}
