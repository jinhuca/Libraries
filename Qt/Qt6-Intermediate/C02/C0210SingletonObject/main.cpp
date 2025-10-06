#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mysingleton.h"

int main(
    int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    MySingleton *singleton = new MySingleton(&app);
    qmlRegisterSingletonInstance("guide.learnqt.Singletons", 1, 0, "MySingleton", singleton);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("C0210SingletonObject", "Main");

    return app.exec();
}
