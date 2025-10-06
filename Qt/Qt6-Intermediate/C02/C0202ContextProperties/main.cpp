#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "cppworker.h"

void set_context_properties(QQmlApplicationEngine& engine, CppWorker& cppworker)
{
    engine.rootContext()->setContextProperty("BWorker", &cppworker);
}

int main(int argc, char* argv[])
{
  QGuiApplication app(argc, argv);

  CppWorker cppworker;
  QQmlApplicationEngine engine;

  set_context_properties(engine, cppworker);

  QObject::connect(
      &engine,
      &QQmlApplicationEngine::objectCreationFailed,
      &app,
      []() { QCoreApplication::exit(-1); },
      Qt::QueuedConnection);
  engine.loadFromModule("C0202ContextProperties", "Main");

  return app.exec();
}
