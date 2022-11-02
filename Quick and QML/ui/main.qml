import QtQuick 2.15
import QtQuick.Layouts
import backend.logic

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    BackendLogic{
        id:backend
    }

    Text{

        anchors{
            centerIn: parent
        }
        font.pixelSize: 20
        text: "From Backend Logic: " + backend.getData();
    }
}
