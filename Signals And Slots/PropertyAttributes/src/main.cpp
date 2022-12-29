#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "myclass.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:rec/ui/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    MyClass myclass;
    myclass.setVersion("1.0");

    return app.exec();
}
