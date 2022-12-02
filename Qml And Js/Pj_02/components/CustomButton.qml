import QtQuick

Rectangle {
    width: 150
    height: 50
    radius: 8
    color: "#def9ff"

    Text{
        anchors.centerIn: parent
        text: qsTr("Click me!")
    }
}
