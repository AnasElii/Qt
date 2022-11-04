#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>

#include "backendlogic.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/rec/ui/CustomObject.qml"_qs);

    engine.load(url);
    return app.exec();
}
