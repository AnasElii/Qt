#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
//#include <QQuickView>

#include "backendlogic.h"

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
    qmlRegisterType<BackendLogic>("backend.logic", 1, 0, "BackendLogic");

    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);
    engine.load(url);
    return app.exec();
}
