#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtResource>
#include "Bsc_Ui_Styles/utilities.h"

QFont set_default_font(QString font_family) {
    QFont Font_to_set;
    // (1) check if the font installed
    if(QFont(font_family).exactMatch()) {
        Font_to_set = QFont(font_family);
        qDebug() << "exactly matched";
    }
    // (2) load the font from library if not installed
    else {
        Font_to_set = get_font(font_family);
        qDebug() << "load font";
    }

    // (3) return set default font for application
    return QFont(Font_to_set);
}

int main(int argc, char *argv[])
{
  QGuiApplication app(argc, argv);
  // qDebug() << "get font family" << get_font().family();
  // app.setFont(get_font("Urbanist"));
  app.setFont(set_default_font("Verdana"));
  QQmlApplicationEngine engine;
  QObject::connect(
    &engine,
    &QQmlApplicationEngine::objectCreationFailed,
    &app,
    []() { QCoreApplication::exit(-1); },
    Qt::QueuedConnection);
  engine.addImportPath(":/");
  engine.addImportPath(":/Bsc_Ui_Styles");
  engine.loadFromModule("manage_resources_app", "Main");
  // engine.load(QUrl(u"qrc:/Bsc_Ui_Styles/imports/"))
  // qDebug() << set_style_font();
  //

  return app.exec();
}
