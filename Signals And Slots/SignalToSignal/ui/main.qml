import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle{
        id: mailBox

        signal forwardButtonClick()
        anchors.fill: parent

        Button {
            id: sendButton

            anchors.centerIn: parent
            width: 100; height: 50
            text: qsTr("OK")
        }

        onForwardButtonClick:{
            console.log("Forwarded Button Click Signal!")
        }

        Component.onCompleted: {
            sendButton.clicked.connect(forwardButtonClick)
        }
    }

}
