#include <QGuiApplication>
#include <QQmlApplicationEngine>

int
main (int argc, char *argv[])
{
  QGuiApplication app (argc, argv);

  QQmlApplicationEngine engine;
  engine.addImportPath (":/");
  QObject::connect (
      &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
      [] () { QCoreApplication::exit (-1); }, Qt::QueuedConnection);
  engine.loadFromModule ("C0708QMLModules", "Main");

  return app.exec ();
}
