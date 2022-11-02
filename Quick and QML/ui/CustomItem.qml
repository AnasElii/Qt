import QtQuick 2.15

Item {
    id: mainItem
    width:500
    height: 500

    Rectangle { width: 80; height: 80; border.width: 1 }
    Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }

    function qmlMethod(msg: string):string
    {
        console.log("QML: Receive message: ", msg);
        return "Seccuss";
    }

    Component.onCompleted: {
        console.log("QML: Component creat seccussfully.");
    }

}
