import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    Text{
        id: rowText
        anchors{
            left: posRow.left
            bottom: posRow.top
        }
        font.pixelSize: 20
        text: "Repeater"
    }

    Row{
        id: posRow
        anchors{
            centerIn: parent            
            bottom: gridText.top
            left: gridText.left

        }
        spacing: 2

        Repeater{
            model: 4
            Rectangle{
                width:100
                height: 100
                color: "red"
            }

        }



    }


}
