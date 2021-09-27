import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: main
        spacing: 30
        width: page.width

        TextField {
            label: "Number"
            placeholderText: "Введите число"
            inputMethodHints: Qt.ImhDigitsOnly
        }

        Button {
            anchors.horizontalCenter: main.horizontalCenter
            text: "Кнопка"
            onClicked: down = true, text = 'Нажал'
        }

        Button {
            anchors.horizontalCenter: main.horizontalCenter
            text: "Кнопка"
            onPressed: button_text.text = "Нажата"
            onReleased: button_text.text = "Отпущена"
        }

        Label {
            id: button_text
            anchors.horizontalCenter: main.horizontalCenter
            text: "Отпущена"
        }

        ValueButton {
            property int count: 0
            label: "Счетчик"
            description: "Считает количество нажатий"
            value: count
            onClicked: count++
        }
    }

}
