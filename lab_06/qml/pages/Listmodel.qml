import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ListModel {
        id: dataModel
        ListElement { color: "white"; text: "Белый"; text_color: "black" }
        ListElement { color: "black"; text: "Черный"; text_color: "white"}
        ListElement { color: "blue"; text: "Синий"; text_color: "red"}
    }
    SilicaListView {
        spacing: 20
        anchors.fill: parent
        header: PageHeader { title: "List model" }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.text_color
            }
        }
    }
}
