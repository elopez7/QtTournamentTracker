#ifndef TEAMDTO_H
#define TEAMDTO_H

#include <QVector>
#include <QString>

class PersonDTO;

struct TeamDTO
{
    int id;

    TeamDTO(const QString& teamName,
            const QVector<PersonDTO>& teamMembers)
        : team_name{teamName}
        , team_members{teamMembers}
    {}

    QString team_name;
    QVector<PersonDTO> team_members;
};

#endif // TEAMDTO_H
