import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    property int count: 0
    Label {
        id: label
        anchors.centerIn: parent
        text: count
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: 'image://theme/icon-m-remove'
            onTriggered: count--
        }

        CoverAction {
            iconSource: 'image://theme/icon-m-add'
            onTriggered: count++
        }
    }
}
