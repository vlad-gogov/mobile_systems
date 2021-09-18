import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    function clearText() {
        a.text = ""
        b.text = ""
        sum = 0
    }

    function accept() {
        console.log(parseInt(a.text) + parseInt(b.text))
        clearText()
    }

    id: page
    property int sum: 0
    Dialog {
        id: dialog
        Column {
            anchors.fill: parent
            width: parent.width
            spacing: Theme.paddingMedium
            DialogHeader {}

            Label {
                text: sum
                anchors.horizontalCenter: parent.horizontalCenter
                y: 50
            }

            Row {
                anchors.horizontalCenter: page.horizontalCenter
                TextField {
                    id: a
                    width: page.width / 2
                    placeholderText: 'Num 1'
                    validator: IntValidator{}
                }

                TextField {
                    id: b
                    width: page.width / 2
                    placeholderText: 'Num 2'
                    validator: IntValidator{}
                }
            }

            Button {
                text: "Сложить"
                onClicked: sum = parseInt(a.text) + parseInt(b.text), console.log(sum)
                width: page.width
            }
        }
        onAccepted: page.accept()
        onRejected: page.clearText()
    }

    Grid {
        columns: 2
        rows: 3
        spacing: 40
        anchors.centerIn: page

        Button {
            text: qsTr("Rectangles")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Rectangles.qml"))
        }

        Button {
            text: qsTr("ColsRows")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ColumnRows.qml"))
        }

        Button {
            text: qsTr("Grid")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("GridRectangles.qml"))
        }

        Button {
            text: qsTr("Transfrom")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("RectanglesTSR.qml"))
        }

        Button {
            text: qsTr("Animation")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("RectangleAnim.qml"))
        }

        Button {
            text: qsTr("Dialog")
            onClicked: dialog.open()
        }
    }
}
