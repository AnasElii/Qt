import QtQuick
import QtQuick.Controls
import rec

Window{
    width: 500; height: 500
    visible: true
    title: qsTr("Custom Object")

    CustomObject{
        id: customObject
    }

    Button {
        id: btn
        width:100; height: 30

        anchors{
            centerIn: parent
        }
        text: qsTr("Click me")
        onClicked:{
            customObjecttest.setObject(btn);
        }
    }

}