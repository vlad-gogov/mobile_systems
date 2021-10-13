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

    SilicaListView {
        anchors.fill: parent
        model: todo
        header: PageHeader { title: "Задачи" }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Text {text: task; color: 'white'}

    }
}
