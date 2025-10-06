#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "movie.h"

int main(
    int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    movie aMovie;
    aMovie.setTitle("Titanic");
    aMovie.setMainCharacter("Leonardo D");

    engine.rootContext()->setContextProperty("Movie", &aMovie);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("C0205QPropertiesMapping", "Main");

    return app.exec();
}
