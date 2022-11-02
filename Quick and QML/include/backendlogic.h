#ifndef BACKENDLOGIC_H
#define BACKENDLOGIC_H

#include <QObject>
#include <QtQml>

class BackendLogic : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit BackendLogic(QObject *parent = nullptr);
    Q_INVOKABLE int getData() { return mValue; }

signals:

private:
    int mValue = 100;
};

#endif // BACKENDLOGIC_H
