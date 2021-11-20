import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int counter: 0
    Component.onCompleted: anim.restart()

    SequentialAnimation {
        id: anim
        loops: Animation.Infinite
        PropertyAnimation {
            target: page
            properties: "counter"
            from: 0
            to: 9
            duration: 9000
        }
    }

    Grid {
        id: grid
        columns: 1
        rows: 3
        spacing: 20
        anchors.centerIn: page
        state: "default"

        states: [
            State {
              name: "default"
            },
            State {
                name: "red"
                when: page.counter >= 0 && page.counter < 3
                PropertyChanges {
                    target: redCircle
                    color: "red"
                }
            },

            State {
                name: "yellow"
                when: page.counter >= 3 && page.counter < 6
                PropertyChanges {
                    target: yellowCircle
                    color: "yellow"
                }
            },

            State {
                name: "green"
                when: page.counter >= 6 && page.counter < 9
                PropertyChanges {
                    target: greenCircle
                    color: "green"
                }
            }

        ]

        transitions: [
            Transition {
                from: "yellow"
                to: "green"
                PropertyAnimation { target: people; property: "x"; from: -people.width; to: page.width;  duration: 2900 }
            }
        ]

        Rectangle {
            id: redCircle
            color: "black"
            width: 100
            height: 100
            radius: 180
        }

        Rectangle {
            id: yellowCircle
            color: "black"
            width: 100
            height: 100
            radius: 180
        }

        Rectangle {
            id: greenCircle
            color: "black"
            width: 100
            height: 100
            radius: 180
        }
    }

    Icon {
        id: people
        x: -width
        y: page.height - height
        source: "image://theme/icon-m-person"
    }

}
