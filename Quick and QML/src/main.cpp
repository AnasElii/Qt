#include <QGuiApplication>
#include <QQmlApplicationEngine>
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
    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);
    engine.load(url);
    return app.exec();
}
