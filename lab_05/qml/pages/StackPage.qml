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
                description: "Описание"
            }
            Button {
                text: "Назад"
                onClicked: pageStack.pop()
            }
            Button {
                text: "Вперед"
                onClicked: pageStack.push(Qt.resolvedUrl("StackPage.qml"))
            }
            Label {
                text: "Глубина стека: " + pageStack.depth
            }
        }
}
