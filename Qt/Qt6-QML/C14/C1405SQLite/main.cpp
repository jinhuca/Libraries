#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int
main (int argc, char *argv[])
{
  QGuiApplication app (argc, argv);

  QQmlApplicationEngine engine;
  QQuickStyle::setStyle("Basic");

  QObject::connect (
    &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
    [] () { QCoreApplication::exit (-1); }, Qt::QueuedConnection);
  engine.loadFromModule ("C1405SQLite", "Main");

  return app.exec ();
}
