import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Dialog {
            id: dialogText
            property alias firstText: a.text
            Column {
                anchors.fill: parent
                width: parent.width
                spacing: Theme.paddingMedium
                DialogHeader {}
                TextField {
                    id: a
                    width: page.width
                }
            }
    }

        Column {
            id: column
            //anchors.fill: parent;
            //width: page.width
            spacing: Theme.paddingLarge
            anchors.horizontalCenter: page.horizontalCenter

            PageHeader {
                title: "Dialog"
            }

            Button {
                text: "Text"
                onClicked: {
                    var dialog = pageStack.push(dialogText);
                    dialog.accepted.connect(function() { textBt.text = dialog.firstText});
                }
            }

            Label {
                id: textBt
                text: " "
            }


            Button {
                text: "Date"
                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog", {date: new Date(2021, 0, 1)});
                    dialog.accepted.connect(function() { dateBt.text = dialog.date});
                }
            }

            Label {
                id: dateBt
                text: " "
            }

            Button {
                text: "Time"
                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog", {hour: 0, minute: 0});
                    dialog.accepted.connect(function() { timeBt.text = dialog.time});
                }
            }

            Label {
                id: timeBt
                text: " "
            }

        }
}
