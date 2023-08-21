#ifndef TOURNAMENTDTO_H
#define TOURNAMENTDTO_H

#include <QString>
#include <QList>

class TeamDTO;
class PrizeDTO;
class MatchupDTO;

struct TournamentDTO
{
    QString tournamen_name;
    double entry_fee;
    QList<TeamDTO> entered_teams;
    QList<PrizeDTO> prizes;
    QList<MatchupDTO> rounds;
};

#endif // TOURNAMENTDTO_H
