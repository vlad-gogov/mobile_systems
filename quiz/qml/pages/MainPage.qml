import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    DAO { id: dao }

    SilicaListView {
        spacing: 10
        anchors.fill: parent
        header: PageHeader {
            title: "Quiz"
            description: "Выберите тему для викторины"
        }

        model: ListModel {
            id: dataModel
        }

        delegate: Button {
            width: parent.width - 20
            x: 10
            border.color: "#FF0070"
            color: "#FFAB74"
            text: model.name
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("QuizPage.qml"), {"category_name": model.name, "category_url": model.url})
        }
    }

    Component.onCompleted: {
        dao.fetchCategory(function(result) {
            for (var i = 0; i < result.length; i++) {
                dataModel.append(result[i])
            };
        });
    }

}
