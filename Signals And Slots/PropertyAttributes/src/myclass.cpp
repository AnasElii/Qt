#include "myclass.h"
#include <QDebug>
#include <iostream>

using namespace std;

MyClass::MyClass(QObject *parent)
	: QObject(parent)
{
}

MyClass ::~MyClass()
{
}