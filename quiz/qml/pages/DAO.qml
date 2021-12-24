import QtQuick 2.0
import QtQuick.LocalStorage 2.0

Item {
    property var database

    Component.onCompleted: {
        database = LocalStorage.openDatabaseSync("quiz", "1.0");
        database.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS categories(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, url TEXT NOT NULL)");
            tx.executeSql("DELETE FROM categories")
            insertCategory("Football", "https://raw.githubusercontent.com/vlad-gogov/mobile_systems/main/quiz/resources/football.json");
            insertCategory("C++", "https://raw.githubusercontent.com/vlad-gogov/mobile_systems/main/quiz/resources/cplusplus.json");
        });
    }

    function insertCategory(name, url) {
        database.transaction(function(tx) {
           var result = tx.executeSql("INSERT INTO categories(name, url) VALUES(?, ?)", [name, url]);
        });
    }

    function deleteCategory(name) {
        database.transaction(function (tx) {
            tx.executeSql("DELETE FROM categories WHERE name = ?", [name]);
        });
    }

    function fetchCategory(callback) {
        database.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM categories");
            callback(result.rows);
        });
    }
}
