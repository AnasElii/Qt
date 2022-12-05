#pragma once
#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>

class MyClass : public QObject
{
	Q_OBJECT

public:
	explicit MyClass(QObject *parent = nullptr);
	~MyClass();

signals:
	void signalA();
	void signalB();
	void signalC();

public slots:
	void slotMain();

};
#endif MYCLASS_H