import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Hello World")

    Text{
        id: rowText
        anchors{
            top: parent.top
            left: posRow.left

        }
        font.pixelSize: 20
        text: "Grid"
    }
    Row{
        id: posRow
        anchors{
            top: rowText.bottom
            bottom: gridText.top
            left: gridText.left
        }
        spacing: 2

        Rectangle{
            width:100
            height: 100

            color: "red"
        }
        Rectangle{
            width:100
            height: 100


            color: "green"
        }
        Rectangle{
            width:100
            height: 100

            color: "blue"
        }
    }

    Text{
        id: columnText
        font.pixelSize: 20
        text: "Column"
    }

    Column{
        spacing: 2
        anchors{
            top: columnText.bottom
        }

        Rectangle{
            width:100
            height: 100

            color: "#f3a5b7"
        }
        Rectangle{
            width:100
            height: 100

            color: "darkgreen"
        }
        Rectangle{
            width:100
            height: 100

            color: "blue"
        }
    }

    Text{
        id: gridText
        anchors{
            left: posGrid.left
            bottom: posGrid.top
        }
        font.pixelSize: 20
        text: "Grid"
    }

    Grid{
        id: posGrid
        spacing: 2
        columns: 2
        anchors.centerIn: parent;

        Rectangle{
            width:100
            height: 100

            color: "#f3a5b7"
        }
        Rectangle{
            width:100
            height: 100

            color: "darkgreen"
        }
        Rectangle{
            width:100
            height: 100

            color: "blue"
        }
        Rectangle{
            width:100
            height: 100

            color: "lightblue"
        }
    }

    Text{
        id: flowText
        font.pixelSize: 20
        text: "Column"
        anchors{
            top: posGrid.bottom
            topMargin: 10
        }
    }

    Flow{
        anchors {
            top: flowText.bottom

        }
        Text{ font.pixelSize: 40; text: "Hello" }
        Text{ font.pixelSize: 20; text: "world" }
        Text{ font.pixelSize: 10; text: "Any way" }
        Text{ font.pixelSize: 20; text: "this is a small" }
        Text{ font.pixelSize: 15; text: "flow" }
        Text{ font.pixelSize: 20; text: "test" }
    }

}
