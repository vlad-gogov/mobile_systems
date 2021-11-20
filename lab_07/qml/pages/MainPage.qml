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
                text: qsTr("Traffic Light")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("TrafficLights.qml"))
            }

            Button {
                text: qsTr("Text")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("TextAnimation.qml"))
            }

            Button {
                text: qsTr("QML components")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("TrafficLightsQMLComponents.qml"))
            }

            Button {
                text: qsTr("Create Button")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("ButtonQMLComponent.qml"))
            }

            Button {
                text: qsTr("Stop Watch")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("StopWatch.qml"))
            }

            Button {
                text: qsTr("Page Stack")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("PageStackSignal.qml"))
            }

        }
}
