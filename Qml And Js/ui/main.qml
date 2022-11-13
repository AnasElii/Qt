import QtQuick
import QtQuick.Controls
import "./constants.js" as Constants
import "./javascriptFile.js" as JavaScriptFile

Window {
    id: mainWindow

    visible: true
    width: 500; height: 500
    title: qsTr("Qml WIth JS Intergation")

    Column {
        id: mainColumn
        spacing: 20
        width: 200 ;height: 200
        anchors.centerIn: parent
        Component.onCompleted: {
            for (var item in children) {
                children[item].anchors.horizontalCenter = mainColumn.horizontalCenter;

            }
        }

        Text{

            font.pixelSize: 20
            text: "From Backend Logic: ";
        }

        Button {
            id: btn

            width: 100; height: 50
            text: qsTr("Click Me!")
            onClicked: JavaScriptFile.btnClicked(displayText)
        }

        Text{
            id: displayText
        }
    }
}
