#include "myclass.h"
#include "./ui_myclass.h"

MyClass::MyClass(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MyClass)
{
    ui->setupUi(this);
}

MyClass::~MyClass()
{
    delete ui;
}

