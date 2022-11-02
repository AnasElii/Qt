import QtQuick 2.15
import QtQuick.Layouts
import rec

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    BackendLogic{
        id:backend
    }

    BackendLogic{
        id:backendLogic
    }

    Text{

        anchors{
            centerIn: parent
        }
        font.pixelSize: 20
        text: "From Backend Logic: " + backendLogic.getData();
    }
}
