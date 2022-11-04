import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    function qmlMethod(msg: string, name: string)
    {
        console.log("QML: Receive message: ", msg, " Name: " + name);
    }

    Component.onCompleted: {
        console.log("QML: Component creat seccussfully.");
    }

}


