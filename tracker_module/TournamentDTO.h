#ifndef TOURNAMENTDTO_H
#define TOURNAMENTDTO_H

#include <QString>
#include <QList>

class TeamDTO;
class PrizeDTO;
class MatchupDTO;

struct TournamentDTO
{
    TournamentDTO(double entryFee,
                  const QString& tournamenName,
                  const QList<TeamDTO>& enteredTeams,
                  const QList<PrizeDTO>& prizes,
                  const QList<MatchupDTO> rounds)
        : entry_fee{entryFee}
        , tournamen_name{tournamenName}
        , entered_teams{enteredTeams}
        , prizes{prizes}
        , rounds{rounds}
    {}

    int id;
    double entry_fee;
    QString tournamen_name;
    QList<TeamDTO> entered_teams;
    QList<PrizeDTO> prizes;
    QList<MatchupDTO> rounds;
};

#endif // TOURNAMENTDTO_H
