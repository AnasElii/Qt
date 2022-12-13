import QtQuick
import QtQuick.Controls

Window{
    id: mainWindow

    title: "Signal to function"
    visible: true
    width: 650; height: 500


    Rectangle {
        id: mailBox
        signal composeMessage(string message)
        anchors.fill: parent
        Text{
            id: textElement
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            width: 100
            height: 50
            text: ""
            horizontalAlignment: Text.AlignHCenter
        }

        Component.onCompleted: {
            mailBox.composeMessage.connect(transmitMessage)
            mailBox.composeMessage("Hello World!")
        }

        function transmitMessage(message)
        {
            console.log("Recive message: " + message)
            textElement.text = message
        }
    }
}