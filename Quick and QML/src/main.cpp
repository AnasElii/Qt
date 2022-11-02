#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
//#include <QQuickView>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // QQuickView view;
    // view.setResizeMode(QQuickView::SizeRootObjectToView);
    // const QUrl url(u"qrc:/rec/ui/main.qml"_qs);
    // view.setSource(url);
    // view.show();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("radius", 50);

    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);
    engine.load(url);
    return app.exec();
}
