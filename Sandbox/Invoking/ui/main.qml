import QtQuick 2.15
import QtQuick.Controls
import rec

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    function qmlMethod(name: string, age: int): string
    {
        console.log("My name " + name + " and I'm " + age + " years old");
        return "QML: Seccuss"
    }

    Component.onCompleted: {
        console.log("Component created successfully.")
    }


}
