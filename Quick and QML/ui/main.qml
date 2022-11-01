import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    Rectangle {
        id: blueRec

        anchors{
            left: parent.left; right: parent.right
            top: parent.top; bottom: parent.bottom
            leftMargin: 10; rightMargin: 10
            topMargin: 10; bottomMargin: 100
        }

        Rectangle{
            id: redRec

            width:100
            height: 100
            anchors.centerIn: parent
            color: "red"
        }

        color: "Blue"

    }

}
