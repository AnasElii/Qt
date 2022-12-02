import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item{
        anchors.fill: parent

        TapHandler{
            acceptedButtons: Qt.LeftButton
            onTapped: console.log("Left Button CLicked!")
        }

        TapHandler{
            acceptedButtons: Qt.MiddleButton
            onTapped: console.log("Middle Button CLicked!")
        }

        TapHandler{
            acceptedButtons: Qt.RightButton
            onTapped: console.log("Right Button CLicked!")
        }

        TapHandler{
            acceptedDevices: PointerDevice.Styles
            onTapped: console.log("Styles Tap!")
        }
    }
}
