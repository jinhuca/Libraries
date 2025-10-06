#include "utilities.h"
#include <QCoreApplication>
#include <QDebug>
#include <QDirIterator>
#include <QFile>
#include <QFontDatabase>
#include <stdexcept>

QMap<QString, QString> font_map{{"Urbanist", "Urbanist-VariableFont_wght.ttf"},
                                {"Consolas", "Consola.ttf"},
                                {"Verdana", "verdana.ttf"}};

/*
QString get_font_family()
{
    QDirIterator it(QCoreApplication::applicationDirPath(), QDirIterator::Subdirectories);
    QString path = "";
    while (it.hasNext()) {
        auto dir = it.next();
        if (dir.contains("Urbanist-VariableFont_wght.ttf")) {
            path = dir;
        }
    }
    qDebug() << path;
    // qDebug() << QCoreApplication::libraryPaths();

    // qDebug() << QCoreApplication::applicationDirPath();
    // QFile file = QFile("/fonts/urbanist/Urbanist-VariableFont_wght.ttf");
    // auto font_path = QCoreApplication::applicationDirPath()
    //                    .append("/fonts/urbanist/Urbanist-VariableFont_wght.ttf");
    // auto font_path = "qrc:/fonts/urbanist/Urbanist-VariableFont_wght.ttf";
    // QQuickView view;
    // view.setSource(QUrl::fromLocalFile("fonts.qml"));

    int styleFontId = QFontDatabase::addApplicationFont(path);
    qDebug() << "style font id: " << styleFontId;
    QString font_family = QFontDatabase::applicationFontFamilies(styleFontId).at(0);
    qDebug() << "styled font family: " << font_family;
    return font_family;

    // return "";
}

QFont get_font() {

    return QFont(get_font_family());
}
*/

QFont get_font(
    QString font_family)
{
    QDirIterator it(QCoreApplication::applicationDirPath(), QDirIterator::Subdirectories);
    QString path = "";
    while (it.hasNext()) {
        auto dir = it.next();
        if (dir.contains(font_map[font_family]))
            path = dir;
    }
    qDebug() << path;

    if (path != "") {
        int font_id = QFontDatabase::addApplicationFont(path);
        qDebug() << "font id = " << font_id;
        QString fontFamily = QFontDatabase::applicationFontFamilies(font_id).at(0);
        qDebug() << "font family: " << fontFamily;
        return QFont(fontFamily);
    } else {
        throw new std::runtime_error("failed to load style font");
    }
}
