import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int timer: 0

    ParallelAnimation {
        id: anim
        loops: Animation.Infinite
        PropertyAnimation {
            target: s
            property: "value"
            from: 0
            to: 59
            duration: 60000
        }

        PropertyAnimation {
            target: m
            property: "value"
            from: 0
            to: 59
            duration: 3600000
        }

        PropertyAnimation {
            target: h
            property: "value"
            from: 0
            to: 23
            duration: 86400000
        }

    }

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        Hours {
            id: h
            x: 50
            y: 120
            value: 0
        }

        Minutes {
            id: m
            x: 150
            y: 120
            value: 0
        }

        Seconds {
            id: s
            x: 250
            y: 120
            value: 0
        }

        Button {
            x: 150
            y: 320
            text: "Start"
            onClicked: {
                if (text == "Start") {
                    text = "Stop"
                    anim.start()
                }
                else {
                    text = "Start"
                    anim.stop()
                }
            }
        }
    }

}
