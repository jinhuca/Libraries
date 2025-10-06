#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int
main (int argc, char *argv[])
{
  QGuiApplication app (argc, argv);

  // App information
  app.setOrganizationName ("LearnQt");
  app.setOrganizationDomain ("learnqt.guide");
  app.setApplicationName ("QMLSettingsDemo2");

  QQmlApplicationEngine engine;
  QQuickStyle::setStyle ("Fusion");

  QObject::connect (
    &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
    [] () { QCoreApplication::exit (-1); }, Qt::QueuedConnection);
  engine.loadFromModule ("C1403SettingsCustom", "Main");

  return app.exec ();
}
