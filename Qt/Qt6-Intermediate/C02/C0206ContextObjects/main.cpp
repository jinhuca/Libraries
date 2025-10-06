#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "propertywrapper.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    PropertyWrapper wrapper;
    wrapper.setLastName("Doe");
    wrapper.setFirstName("John");
    engine.rootContext()->setContextObject(&wrapper);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("C0206ContextObjects", "Main");

    return app.exec();
}
