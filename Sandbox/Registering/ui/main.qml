import QtQuick 2.15
import rec

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    BackendLogic{
        id: backend
    }

    Text{
        id: text1

        text: "Title = " + backend.getHWorld()
        anchors {
            centerIn: parent
        }
        font.family: "Helvetica"
        font.pointSize: 20
    }

    Text{
        text: "The C++ Radius = " + backend.getData()
        anchors{
            top: text1.bottom
            left: text1.left
            topMargin: 10

        }
    }

    TextEdit{
        width: 240
        text: "Description: " + backend.getDescription()
        anchors{
            top: text1.bottom
            topMargin: 30
            left: text1.left
        }
        focus: false
    }

}
