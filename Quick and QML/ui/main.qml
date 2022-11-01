import QtQuick 2.15
import QtQuick.Layouts

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
        text: "Stack Layout"
    }

    StackLayout{

        id: stackLayout
        anchors{
            centerIn: parenZZt
            bottom: gridText.top
            left: gridText.left

        }
        currentIndex:1



        Rectangle{
            width:100
            height: 100
            color: "red"
        }

        Rectangle{
            width:100
            height: 100
            color: "blue"
        }

        Rectangle{
            width:100
            height: 100
            color: "green"
        }

        Rectangle{
            width:100
            height: 100
            color: "#f8f645"
        }

        Rectangle{
            width:100
            height: 100
            color: "#3cd2e6"
        }


    }




}
