import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        columns: 2
        rows: 4
        spacing: 20
        anchors.centerIn: page

        Button {
            text: qsTr("List Model")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Listmodel.qml"))
        }

        Button {
            text: qsTr("Rectangle")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Rect.qml"))
        }

        Button {
            text: qsTr("List Model Java")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ListModelJava.qml"))
        }

        Button {
            text: qsTr("Currency Rate")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("CurrencyRate.qml"))
        }

        Button {
            text: qsTr("Currency Rate XML")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("CurrencyRateXML.qml"))
        }

        Button {
            text: qsTr("Data base")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("DataBase.qml"))
        }

    }
}
