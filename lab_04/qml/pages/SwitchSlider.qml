import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: main
        spacing: 30
        width: page.width

        ComboBox {
            label: "Выпадающий список"
            description: "Описание выпадающего меню"
                menu: ContextMenu {
                    MenuItem { text: "первый" }
                    MenuItem { text: "второй" }
                    MenuItem { text: "третий" }
                }
            onCurrentItemChanged: console.log(currentItem.text)
        }

        TextSwitch {
            text: "Выключен"
            onCheckedChanged: checked == true ? text = "Включен" : text = "Выключен"
        }

        Slider {
            width: parent.width
            label: "Текущее значние: " + value
            minimumValue: 0
            maximumValue: 100
            value: 42
            stepSize: 1
            valueText: value
        }

    }
}
