import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
         PullDownMenu {
             MenuItem {
                 text: "Option 1"
                 onClicked: a.text = "Option 1"
             }
             MenuItem {
                 text: "Option 2"
                 onClicked: a.text = "Option 2"
             }
             MenuLabel { text: "PullDownMenu" }
         }

         anchors.fill: parent
         header: PageHeader { title: "Header" }
         Label {
             id: a
             text: ""
             anchors.centerIn: parent
         }
         PushUpMenu {
             MenuItem {
                 text: "Option 3"
                 onClicked: a.text = "Option 3"
             }
             MenuItem {
                 text: "Option 4"
                 onClicked: a.text = "Option 4"
             }
             MenuLabel { text: "PushUpMenu" }
         }
     }
}
