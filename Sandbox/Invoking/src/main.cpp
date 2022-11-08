#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);

    QQmlComponent component(&engine, url);
    QObject *obj = component.create();
    QString name = "Hello From C++";
    int age = 27;
    QString rValue = "";

    QMetaObject::invokeMethod(obj, "qmlMethod", Q_RETURN_ARG(QString, rValue), Q_ARG(QString, name), Q_ARG(int, age));

    qDebug() << "Qml Message: " << rValue;

    // engine.load(url);
    return app.exec();
}
