#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("radius", 50);

    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);

    engine.load(url);
    return app.exec();
}
