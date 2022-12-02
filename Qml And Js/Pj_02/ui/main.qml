import QtQuick
import "../components" as CustomItems


Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Qml WIth JS Intergation")

    CustomItems.CustomButton{
        id:cusButton
    }
}
