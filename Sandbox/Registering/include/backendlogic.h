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
    Q_INVOKABLE int getData() { return nValue; }
    Q_INVOKABLE QString getHWorld() { return sValue; }
    Q_INVOKABLE QString getDescription() { return dValue; }

signals:

private:
    int nValue = 50;
    QString sValue = "Hello World";
    QString dValue = "Soo this is a description for a Line Text :)";
};

#endif // BACKENDLOGIC_H
