import QtQuick
import QtQuick.Controls

Window{
    id: mainWindow

    title: "Signal to function"
    visible: true
    width: 650; height: 500


    Rectangle {
        id: recMainColor
        property var recColor : "blue"
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: middelRec.top
                bottomMargin: 10
            }
            width: 100
            height: 100
            color: recColor

            onRecColorChange:{
                console.log("The color just cahanged to: " + recColor)
            }
        }

        Rectangle {
            id: middelRec
            anchors.centerIn: parent
            width: 100
            height: 100
            recMainColor.recColor: "green"
            color: recMainColor.recColor
        }

        Rectangle {
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: middelRec.bottom
                topMargin: 10
            }
            width: 100
            height: 100
            color: "red"
        }

    }
