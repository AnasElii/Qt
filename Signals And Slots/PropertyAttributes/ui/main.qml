import QtQuick
import QtQuick.Controls
import rec

Window {

    visible: true
    width: 640
    height: 480
    title: qsTr("Property Attributes In QML")

    Rectangle{
        id: mailBox


        property var version: rec.version

            signal forwardButtonClick()
            anchors.fill: parent

            Button {
                id: sendButton

                anchors.centerIn: parent
                width: 100; height: 50
                text: qsTr("OK")
            }

            onForwardButtonClick:{
                console.log("The Project Version: " + version)
                version = version + 1
                console.log("The Project Version: " + version)
            }

            onVersionChanged:{
                console.log("Vestion Just Changes :)")
            }

            Component.onCompleted: {
                sendButton.clicked.connect(forwardButtonClick)
            }
        }

    }
