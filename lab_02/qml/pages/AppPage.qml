import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

        Column {
            spacing: 20
            Label {
                id: counter
                property int a: 0
                width: page.width
                text: a
                color: Theme.secondaryHighlightColor
                horizontalAlignment: "AlignHCenter"
                font.pixelSize: 100
            }

            Button {
                x: page.width / 2 - this.width / 2
                text: "Add"
                onClicked: counter.a += 1
                onPressAndHold: counter.a = 0
                width: page.width - 50
            }
        }
}
