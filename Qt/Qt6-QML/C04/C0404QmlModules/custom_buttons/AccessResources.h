#ifndef ACCESSRESOURCES_H
#define ACCESSRESOURCES_H

#include <QFont>
#include <QFontDatabase>
#include <QString>

void
load_font ()
{
  int id = QFontDatabase::addApplicationFont (":/fonts/your_font.ttf");
}

#endif // ACCESSRESOURCES_H
