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
        text: "The C++ Radius = " + backend.getData()
        anchors.centerIn: parent

    }
}
