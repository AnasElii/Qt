import QtQuick 2.15
import QtQuick.Controls 2.14
import MyCustomObject

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Qml Object in C++")

    CustomObject{
        id: customObject
    }

    Button {
        id: button
        width: 100
        height: 50
        anchors.centerIn: parent
        text: qsTr("Click Me!")
        onClicked: {
            customObject.setObject(button);
        }
    }

}
