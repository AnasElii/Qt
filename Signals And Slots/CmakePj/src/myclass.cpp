#include "myclass.h"
#include <QDebug>
#include <iostream>

using namespace std;

MyClass::MyClass(QObject *parent)
	: QObject(parent)
{
	QObject::connect(this, &MyClass::signalB, this, &MyClass::slotMain);	
	emit signalB();

}

MyClass ::~MyClass()
{}

void MyClass::slotMain()
{
	qDebug() << "Slot Main Called!";
}
