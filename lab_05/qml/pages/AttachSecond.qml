import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

        Column {
            id: column
            anchors.fill: parent;

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: "Вторая страница"
            }
            Button {
                text: "Назад"
                onClicked: pageStack.navigateBack()
            }
        }
}
