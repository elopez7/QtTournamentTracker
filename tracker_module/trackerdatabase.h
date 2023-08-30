#ifndef TRACKERDATABASE_H
#define TRACKERDATABASE_H

#include <QObject>
#include <QQmlEngine>
#include <QtSql/QtSql>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include "PrizeDTO.h"

class TrackerDatabase : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
public:
    explicit TrackerDatabase(QObject *parent = nullptr);

    Q_INVOKABLE void addPrizeToDatabase(int placeNumber, const QString& placeName, double prizeAmount, double prizePercentage);

signals:


private:
    QSqlDatabase m_db;
    QString m_database_path;

    void copyDatabaseFileFromQrcToDisk();
    void openDatabase();
    void closeDatabase();

    PrizeDTO addPrizeToDB(PrizeDTO prize);
};

#endif // TRACKERDATABASE_H
