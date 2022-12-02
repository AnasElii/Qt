import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Swipe View")

    SwipeView{
        id: swipeView
        currentIndex: 0
        anchors.fill : parent
        Rectangle{ id: page1; color:"red" }
        Rectangle{ id: page2; color:"green" }
        Rectangle{ id: page3; color:"blue" }
    }

    PageIndicator{
        id: pageIndicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors {
            bottom: swipeView.botton
            horizontalCenter: parent.horizontalCenter
        }
    }
}
