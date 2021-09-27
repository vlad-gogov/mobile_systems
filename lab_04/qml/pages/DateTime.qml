import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: main
        spacing: 30
        width: page.width

        DatePicker {
            date: new Date()
            daysVisible: true
            monthYearVisible: true
            onDateChanged: console.log(date)
        }

        TimePicker {
            id: watch
            anchors.horizontalCenter: main.horizontalCenter
            hour: 0
            minute: 0
            onTimeChanged: console.log(timeText)
            Label {
                anchors.centerIn: watch
                text: watch.timeText
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }


    }
}
