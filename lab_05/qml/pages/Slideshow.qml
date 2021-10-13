import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: todo
        ListElement { task: "Сделать дело"; date: "17.02.2017"; }
        ListElement { task: "Гулять смело"; date: "17.02.2017"; }
        ListElement { task: "Прочитать книгу"; date: "16.02.2017"; }
        ListElement { task: "Сходить на учебу"; date: "15.02.2017"; }
    }

    SlideshowView {
        id: view
        anchors.fill: parent
        model: todo
        itemWidth: width
        orientation: Qt.Horizontal
        delegate: BackgroundItem {
            width: view.itemWidth
            height: view.itemHeight
            PageHeader {
                title: {todo.get(index).date}
            }
            Text {
                anchors.centerIn: parent
                text: todo.get(index).task
                font.pointSize: 30
                color: highlighted ?
                 Theme.highlightColor :
                 Theme.primaryColor
            }
        }

    }
}
