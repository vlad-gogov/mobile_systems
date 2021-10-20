import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int count: 0

    ListModel { id: dataModel; }
    Column {
        anchors.fill: parent
        spacing: 10
        anchors.margins: 10
        SilicaListView {
            width: parent.width; height: parent.height - addButton.height - parent.spacing;
            header: PageHeader { title: "Список" }
            model: dataModel
            spacing: 10
            delegate: Rectangle {
                Button {
                    width: parent.width
                    onClicked: dataModel.remove(model.index)
                }
                width: parent.width
                height: 70
                color: "white"
                Text {
                    anchors.centerIn: parent
                    text: model.text
                }
            }
        }
        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: { dataModel.append({text: "Элемент " + count}); count++}
        }
    }
}
