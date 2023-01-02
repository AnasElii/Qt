import QtQuick
import QtQuick.Controls

Window{
    id: mainWindow

    title: "C++ Qml Signals and Slots"
    width: 650; height: 500
    visible: true

    default property int count : cppbackend.counter

    onCountChanged:{
        console.log("Property is notified. Update value is: " + count)
    }

    Connections {
        target: cppbackend
        onSendToQml:{
            labelCount.text: "Fetched value is :" + cppbackend.counter
        }
    }

    Row{
        anchors.centerIn = parent
        spacing: 20
        Text{
            is: labelCount
            text: "Fetched value is: " + cppbackend.counter

        }

        Button {
            id: btn
            text: qsTr("Fetch")
            width: 100; height: 20
            onClicked: {
                cppbackend.receiveFromQml();
            }
        }

    }

}
