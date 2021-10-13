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
                title: "Заголовок"
            }
            Button {
                text: "Добавить страницу"
                onClicked: pageStack.pushAttached(Qt.resolvedUrl("AttachSecond.qml"))
            }
            Button {
                text: "Убрать старницу"
                onClicked: pageStack.popAttached()
            }
        }
}
