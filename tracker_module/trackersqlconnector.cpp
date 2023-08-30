#include <QDebug>
#include <QDir>
#include <QFile>
#include <QStandardPaths>
#include "trackersqlconnector.h"

TrackerSqlConnector::TrackerSqlConnector(QObject *parent)
    : QObject{parent}
{
    copyDatabaseFileFromQrcToDisk();
    createDatabaseConnection();
}


void TrackerSqlConnector::copyDatabaseFileFromQrcToDisk()
{
    m_database_path = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    QDir db_directory{m_database_path};

    if(!db_directory.exists()){
        db_directory.mkpath(m_database_path);
    }
    if(!db_directory.exists("QtTournamentTracker")){
        db_directory.mkdir("QtTournamentTracker");
    }

    db_directory.cd("QtTournamentTracker");
    m_database_path = db_directory.absoluteFilePath("TournamentsDB.db");

    if(QFile::copy(":/TournamentsDB.db", m_database_path)){
        QFile::setPermissions(m_database_path, QFileDevice::ReadOwner|QFileDevice::WriteOwner);
        qDebug() << "Succesfully created database file on disk";
    }
    else{
        qDebug() << "Database creation failed. Does it already exist?";
    }
}

void TrackerSqlConnector::createDatabaseConnection()
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    m_db.setDatabaseName(m_database_path);
}
