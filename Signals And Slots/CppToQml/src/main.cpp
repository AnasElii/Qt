#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "cppbackend.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    CppBackEnd cppBackEnd;
    QQmlContext *context = engine.rootContext();

    context->setContextProperty("cppBackend", &cppBackEnd);

    engine.load(QUrl(QStringLiteral("qrc:rec/interfaces/main.qml")));
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }

    return app.exec();
}