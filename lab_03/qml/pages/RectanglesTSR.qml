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

        }

        Rectangle {
            color: rec_A.color; width: rec_A.width; height: rec_A.height
            transform : [
                Scale { yScale: 0.5; xScale: 1.2 },
                Rotation {angle: 135;},
                Translate {x: rec_A.width * 1.2 ; y: rec_A.height * 0.3}
            ]
        }
    }
}
