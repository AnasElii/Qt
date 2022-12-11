#include "myclass.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MyClass w;
    w.setVersion("Version 1.0");
    w.show();
    return a.exec();
}
