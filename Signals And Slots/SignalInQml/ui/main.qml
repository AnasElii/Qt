import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle {
        id: mailBox

        signal compressMessage(string message)
        signal helloMessage(string message)
        anchors.fill: parent

        Button {
            id: btn

            anchors.centerIn: parent
            width: 100; height: 50
            text: qsTr("OK")
            onClicked:{
                mailBox.compressMessage("Hello World")
                mailBox.helloMessage("Hello")
            }
        }
        onCompressMessage: {
            console.log("Compress Message: ", message)
        }
        onHelloMessage: {
            console.log("From Hello Message: ", message)
        }
    }
}
