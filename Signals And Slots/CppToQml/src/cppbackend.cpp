#include "cppbackend.h"

CppBackEnd::CppBackEnd(QObject *parent)
    : QObject{parent}
{
}

void CppBackEnd::reciveFromQml()
{
    // We increase the counter and send a signal with new value
    ++m_counter;
    emit sendToQml(m_counter);
}

void CppBackEnd::setCounter(int counter)
{
    if (m_counter == counter)
        return;
    m_counter = counter;
    emit counterChanged(m_counter);
}
