#include <QGuiApplication>
#include <QQmlApplicationEngine>

int
main (int argc, char *argv[])
{
  QGuiApplication app (argc, argv);

  // App information
  app.setOrganizationName ("LearnQt");
  app.setOrganizationDomain ("learnqt.guide");
  app.setApplicationName ("SaveTheStatesV2");

  QQmlApplicationEngine engine;
  QObject::connect (
    &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
    [] () { QCoreApplication::exit (-1); }, Qt::QueuedConnection);
  engine.loadFromModule ("C1404SaveTheStates", "Main");

  return app.exec ();
}
