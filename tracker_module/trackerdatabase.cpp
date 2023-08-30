#include <QDebug>
#include <QSqlDatabase>
#include "trackerdatabase.h"

TrackerDatabase::TrackerDatabase(QObject *parent)
    : QObject{parent}
{
    Q_INIT_RESOURCE(tracker_resources);
}

void TrackerDatabase::openDatabase()
{
    m_db = QSqlDatabase::database();
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
