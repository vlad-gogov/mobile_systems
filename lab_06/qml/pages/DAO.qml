import QtQuick 2.0
import QtQuick.LocalStorage 2.0

Item {
    property var database;
    property real currentVersion: 1.0

    Component.onCompleted: {
        database = LocalStorage.openDatabaseSync("a", "1.0");
        database.transaction(function(tx) {
                   var result = tx.executeSql("CREATE TABLE IF NOT EXISTS a(
                        id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name TEXT NOT NULL)");
        });
    }

    function insertNote(title) {
        database.transaction(function(tx) {
           tx.executeSql("INSERT INTO a(name) VALUES(?)", [title]);
        });
        console.log("Insert in table: " + title)
    }

    function deleteNote(id) {
        database.transaction(function (tx) {
            tx.executeSql("DELETE FROM a WHERE id = ?", [id])
            console.log("Delete: ", id);
        });
    }

    function retrieveNotes(callback) {
        database.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM a");
            callback(result.rows);
            console.log("RET: ", result.lenght)
        });
    }

}
