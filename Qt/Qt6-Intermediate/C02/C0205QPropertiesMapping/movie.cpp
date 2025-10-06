#include "movie.h"

movie::movie(QObject *parent)
    : QObject{parent}
{}

QString movie::mainCharacter() const
{
    return m_mainCharacter;
}

void movie::setMainCharacter(const QString &newMainCharacter)
{
    if (m_mainCharacter == newMainCharacter)
        return;
    m_mainCharacter = newMainCharacter;
    emit mainCharacterChanged();
}

QString movie::title() const
{
    return m_title;
}

void movie::setTitle(const QString &newTitle)
{
    if (m_title == newTitle)
        return;
    m_title = newTitle;
    emit titleChanged();
}
