import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        columns: 2
        rows: 5
        spacing: 40
        anchors.centerIn: page

        Button {
            text: qsTr("Page Stack")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("StackPage.qml"))
        }

        Button {
            text: qsTr("Attach")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Attach.qml"))
        }

        Button {
            text: qsTr("Dialog")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("DialogPage.qml"))
        }

        Button {
            text: qsTr("List View")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ListView.qml"))
        }

        Button {
            text: qsTr("Web View")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("WebView.qml"))
        }

        Button {
            text: qsTr("Slides Show")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Slideshow.qml"))
        }

        Button {
            text: qsTr("Pull Menu")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("PullMenu.qml"))
        }

        Button {
            text: qsTr("List Menu")
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ListMenu.qml"))
        }

    }
}
