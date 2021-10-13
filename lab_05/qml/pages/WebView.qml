import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top; bottom: urField.top
            left: parent.left; right: parent.right
        }
        url: "https://sailfishos.org/"
    }
    TextField {
        id: urField
        anchors {
            bottom: parent.bottom; left: parent.left
            right: parent.right
        }
        text: "https://sailfishos.org/"
        label: webView.title
        EnterKey.onClicked: webView.url = text
    }
}
