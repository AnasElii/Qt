#ifndef MYCLASS_H
#define MYCLASS_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MyClass; }
QT_END_NAMESPACE

class MyClass : public QMainWindow
{
    Q_OBJECT
    Q_PROPERTY(QString version READ version WRITE setVersion NOTIFY versionChanged);

public:
    MyClass(QWidget *parent = nullptr);
    ~MyClass();

    void setVersion(QString version){
        m_version = version;
        emit versionChanged(version);
    }
    QString version(){return m_version;}
signals:
    void versionChanged(QString m_version);

private:
    Ui::MyClass *ui;
    QString m_version;
};
#endif // MYCLASS_H
