import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    XmlListModel {
        id: xmlListModel
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()" }
        XmlRole { name: "Value"; query: "Value/string()" }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Валюта XMLHttp" }
        model: xmlListModel
        delegate: Column {
            x: Theme.horizontalPageMargin
            Label { text: Name }
            Label { text: Value }
        }
    }
    Component.onCompleted: loadRate()

    function loadRate() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlListModel.xml = xhr.responseText;
            }
        }
        xhr.open('GET', "http://www.cbr.ru/scripts/XML_daily.asp");
        xhr.send();
    }
}
