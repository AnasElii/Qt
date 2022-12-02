import QtQuick
import QtQuick.Controls

Window {
    width: 300
    height: 400
    visible: true
    title: qsTr("MultiTouch Area")

    MultiPointTouchArea{
        anchors.fill: parent
        touchPoints:[
            TouchPoint{id: tp1},
            TouchPoint{id: tp2},
            TouchPoint{id: tp3}
        ]
    }

    Rectangle{
        width:100; height:100
        color: 'red'
        x: tp1.x; y: tp1.y
    }

    Rectangle{
        width:100; height:100
        color: 'green'
        x: tp2.x; y: tp2.y
    }

    Button{
        id: btn

        width: 100; height: 50
        text: qsTr("Click Me!")
        x: tp3.x; y: tp3.y
        onClicked: this.text = "Hello WOrld"
    }



}
