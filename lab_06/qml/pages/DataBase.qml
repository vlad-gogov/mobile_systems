import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    DAO { id: dao }
    ListModel { id: notesListModel; }
    Column {
        anchors.fill: parent
        spacing: 10
        anchors.margins: 10
        TextField {
            id: field
            placeholderText: "Заметка"
        }

        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: { dao.insertNote(field.text); selectNotes() }
        }
        SilicaListView {
            width: parent.width; height: parent.height - addButton.height - parent.spacing;
            model: notesListModel
            spacing: 5
            delegate: Label {
                Button {
                    width: parent.width
                    onClicked: { dao.deleteNote(model.index); selectNotes() }
                }
                height: 70
                Text {
                    color: 'white'
                    anchors.centerIn: parent
                    text: model.text
                }
            }
        }
    }

    function selectNotes() {
        notesListModel.clear();
        dao.retrieveNotes(function(notes) {
            console.log("JOPA: ", notes.lenght)
            for (var i = 0; i < notes.lenght; i++) {
                var note = notes.item(i);
                console.log(note)
                notesListModel.append({id: note.id, title: note.title});
            }
        });
    }

    Component.onCompleted: selectNotes()
}
