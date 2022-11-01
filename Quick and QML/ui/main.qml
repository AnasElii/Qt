import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")

    Text{
        anchors.centerIn: parent
        text: "Hello World!"
    }
    
}