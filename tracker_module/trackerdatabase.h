#ifndef TRACKERDATABASE_H
#define TRACKERDATABASE_H

#include <QObject>
#include <QSqlDatabase>

class TrackerDatabase : public QObject
{
    Q_OBJECT
public:
    explicit TrackerDatabase(QObject *parent = nullptr);

signals:


private:
    QSqlDatabase m_db;
};

#endif // TRACKERDATABASE_H
