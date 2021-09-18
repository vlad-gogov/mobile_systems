import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Grid {
        columns: 3
        rows: 2
        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter
        y: 40

        Rectangle { color: "red"; width: 200; height: 200}
        Rectangle { color: "green"; width: 200; height: 200}
        Rectangle { color: "blue"; width: 200; height: 200}
        Rectangle { color: "purple"; width: 200; height: 200}
        Item { width: 200; height: 200}
        Rectangle { color: "black"; width: 200; height: 200}
    }
}
