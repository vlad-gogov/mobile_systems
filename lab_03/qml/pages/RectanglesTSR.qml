import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        anchors.horizontalCenter: page.horizontalCenter
        y: 40
        columns: 2
        rows: 1
        spacing: 40

        Rectangle {
            id: rec_A
            color: "black"; width: 200; height: 200
            Text {
               text: "Текст"
               color: 'white'
               anchors.horizontalCenter: rec_A.horizontalCenter
               anchors.verticalCenter: rec_A.verticalCenter
            }

        }

        Rectangle {
            id: transfor
            color: rec_A.color; width: rec_A.width; height: rec_A.height
            Text {
               text: "Текст"
               color: 'white'
               anchors.horizontalCenter: transfor.horizontalCenter
               anchors.verticalCenter: transfor.verticalCenter
            }
            transform : [
                Scale { yScale: 0.5; xScale: 1.2 },
                Rotation {angle: 135;},
                Translate {x: rec_A.width * 1.2 ; y: rec_A.height * 0.3}
            ]
        }
    }
}
