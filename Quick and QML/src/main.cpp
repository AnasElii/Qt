#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>

#include "backendlogic.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/rec/ui/CustomItem.qml"_qs);

    QQmlComponent component(&engine, url);
    QObject *myObject = component.create();
    QString retValue = "";
    QString msg = "C++: Message from C++";
    QMetaObject::invokeMethod(myObject, "qmlMethod",
                              Q_RETURN_ARG(QString, retValue), Q_ARG(QString, msg));

    qDebug() << "C++: QML method returned: " << retValue;

    delete myObject;
    return app.exec();
}
