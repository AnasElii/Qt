import QtQuick
import QtQuick.Controls

Window{
    id: mainWindow

    title: "C++ Qml Signals and Slots"
    width: 650; height: 500
    visible: true

    default property int count : cppBackend.counter

    onCountChanged:{
        console.log("Property is notified. Update value is: " + count)
    }

    Connections {
        target: cppBackend
        onSendToQml:{
            labelCount.text = "Fetched value is :" + cppBackend.counter
        }
    }

    Row{
        anchors.centerIn : parent
        spacing: 20
        Text{
            id: labelCount
            text: "Fetched value is: " + cppBackend.counter
        }

        Button {
            id: btn
            text: qsTr("Fetch")
            width: 100; height: 20
            onClicked: {
                cppBackend.receiveFromQml();
            }
        }

    }

}
