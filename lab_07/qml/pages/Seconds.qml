import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    default property int value
    Label {
        anchors.fill: parent
        text: parent.value
    }
}
