#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "tracker_module/trackersqlconnector.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    TrackerSqlConnector trackerDBConnector;

    QQmlApplicationEngine engine;
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("QtTournamentTracker", "Main");

    return app.exec();
}
