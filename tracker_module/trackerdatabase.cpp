#include "trackerdatabase.h"
#include <QDebug>
#include <QSqlDatabase>

TrackerDatabase::TrackerDatabase(QObject *parent)
    : QObject{parent}
{
    Q_INIT_RESOURCE(tracker_resources);
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    m_db.setDatabaseName(":/TournamentsDB.db");

    if(!m_db.open()){
        qDebug() << "Error: Connection with database failed";
    }
    else{
        qDebug() << "Database: connection OK";
    }
}
