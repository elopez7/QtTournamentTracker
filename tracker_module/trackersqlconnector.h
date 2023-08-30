#ifndef TRACKERSQLCONNECTOR_H
#define TRACKERSQLCONNECTOR_H

#include <QObject>
#include <QtSql/QSqlDatabase>

class TrackerSqlConnector : public QObject
{
    Q_OBJECT
public:
    explicit TrackerSqlConnector(QObject *parent = nullptr);

signals:

private:
    QSqlDatabase m_db;
    QString m_database_path;

    void copyDatabaseFileFromQrcToDisk();
    void createDatabaseConnection();
};

#endif // TRACKERSQLCONNECTOR_H
