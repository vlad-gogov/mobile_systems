import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent

        model: 20
        delegate: ListItem {
            width: ListView.view.width

            Label {
                id: label
                text: 'List Item #' + index
                anchors.centerIn: parent
            }

            menu: ContextMenu {
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Menu Item 1"
                    onClicked: console.log(text + ": " + model.index)
                }
                MenuItem {
                    text: "Menu Item 2"
                    onClicked: console.log(text + ": " + model.index)
                }
            }
        }
    }
}
