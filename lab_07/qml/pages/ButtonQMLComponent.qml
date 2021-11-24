import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    Row {
        CustomButton {
            x: 200
            y: 30
            Text {
                text: "Button1"
            }
            color: "red"
        }
        CustomButton {
            x: 200
            y: 150
            Text {
                text: "Button2"
            }
            color: "yellow"
        }
    }

}
