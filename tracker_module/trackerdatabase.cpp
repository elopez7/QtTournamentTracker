#include "trackerdatabase.h"
#include <QDebug>
#include <QSqlDatabase>
#include <QStandardPaths>
#include <QFile>

TrackerDatabase::TrackerDatabase(QObject *parent)
    : QObject{parent}
{
    Q_INIT_RESOURCE(tracker_resources);

    copyDatabaseFileFromQrcToDisk();
    //openDatabase();
}

void TrackerDatabase::copyDatabaseFileFromQrcToDisk()
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

void TrackerDatabase::openDatabase()
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    m_db.setDatabaseName(m_database_path);

    if(!m_db.open()){
        qDebug() << "Error: Connection with database failed " << m_db.lastError();
    }
    else{
        qDebug() << "Database: connection OK";
    }
}

void TrackerDatabase::closeDatabase()
{
    if(m_db.isOpen()){
        qDebug() << "Closing Database";
        m_db.close();
    }
}

void TrackerDatabase::addPrizeToDatabase(int placeNumber,
                                         const QString& placeName,
                                         double prizeAmount,
                                         double prizePercentage)
{
    PrizeDTO prizeSample{placeNumber, placeName, prizeAmount, prizePercentage};
    addPrizeToDB(prizeSample);
}

PrizeDTO TrackerDatabase::addPrizeToDB(PrizeDTO prize)
{
    openDatabase();
    QSqlQuery query;
    query.prepare("INSERT INTO main.Prizes(PlaceNumber,PlaceName,PrizeAmount,PrizePercentage) VALUES (:placeNumber,:placeName,:prizeAmount,:prizePercentage)");

    query.bindValue(":placeNumber", prize.place_number);
    query.bindValue(":placeName", prize.place_name);
    query.bindValue(":prizeAmount", prize.prize_amount);
    query.bindValue(":prizePercentage", prize.prize_percentage);

    if(query.exec()){
        qDebug() << "Prize Added Succesfully";
    }
    else{
        qDebug() << "Error Adding Prize to DB: " << query.lastError();
    }
    closeDatabase();
    return prize;
}
