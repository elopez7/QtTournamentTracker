#ifndef TEAMDTO_H
#define TEAMDTO_H

#include <QVector>
#include <QString>

class PersonDTO;

struct TeamDTO
{
    QVector<PersonDTO> team_members;
    QString team_name;
};

#endif // TEAMDTO_H
