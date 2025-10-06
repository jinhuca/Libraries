#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QObject::connect (
        &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
        [] () { QCoreApplication::exit (-1); }, Qt::QueuedConnection);

    engine.addImportPath (":/");
    engine.loadFromModule("C0404QmlModules", "Main");

    return app.exec();
}
