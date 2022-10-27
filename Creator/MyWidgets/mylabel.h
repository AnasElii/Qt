#ifndef MYLABEL_H
#define MYLABEL_H

#include <QWidget>
#include <QtDesigner>

class QDESIGNER_WIDGET_EXPORT MyLabel : public QWidget
{
    Q_OBJECT

public:
    MyLabel(QWidget *parent = 0);
};

#endif // MYLABEL_H
