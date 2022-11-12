import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")    

    Text{

        anchors{
            centerIn: parent
        }
        font.pixelSize: 20
        text: "From Backend Logic: ";
    }
}
