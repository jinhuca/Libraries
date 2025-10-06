#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "movie.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Movie>("guide.learnqt.movie", 1, 0, "Movie");

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("C0208InstantiableObject", "Main");

    return app.exec();
}
