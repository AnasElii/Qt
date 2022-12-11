#include "myclass.h"
#include <QDebug>
#include <iostream>

using namespace std;

MyClass::MyClass(QObject *parent)
	: QObject(parent)
{
	QObject::connect(this, &MyClass::signalA, this, &MyClass::signalB);
	QObject::connect(this, &MyClass::signalB, this, &MyClass::slotMain);	
	emit signalA();

}

MyClass ::~MyClass()
{}

void MyClass::slotMain()
{
	qDebug() << "Slot Main Called!";
}
