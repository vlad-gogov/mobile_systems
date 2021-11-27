import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    allowedOrientations: Orientation.All

    property int prevDepth: 2
    property int pushPage: 0
    property int popPage: 0

    function check() {
        if (typeof pageStack === "undefined")
            return
        if (prevDepth > pageStack.depth)
            popPage++;
        else if (prevDepth < pageStack.depth)
            pushPage++;
        prevDepth = pageStack.depth;
    }

    Component.onCompleted: {
        pageStack.depthChanged.connect(check);
    }

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
            onClicked: pageStack.push(Qt.resolvedUrl("PageStackSignal.qml"))
        }
        Label {
            text: "Глубина стека: " + pageStack.depth
        }

        Label {
            text: "Вперед: " + pushPage.toString()
        }

        Label {
            text: "Назад: " + popPage.toString()
        }
    }
}
