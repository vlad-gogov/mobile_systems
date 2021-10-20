import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property var dataModel: [
        { color: "white", text: "Белый", text_color: "black" },
        { color: "black", text: "Черный", text_color: "white"},
        { color: "blue", text: "Синий", text_color: "red"}
    ]
    SilicaListView {
        spacing: 20
        anchors.fill: parent
        header: PageHeader { title: "List model Java" }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                color: modelData.text_color
            }
        }
    }
}
