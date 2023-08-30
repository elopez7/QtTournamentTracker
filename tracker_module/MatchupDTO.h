#ifndef MATCHUPDTO_H
#define MATCHUPDTO_H

#include <QList>

class MatchupEntryDTO;
class TeamDTO;

struct MatchupDTO
{
    MatchupDTO(int matchupRound,
               TeamDTO* winnerTeam,
               const QList<MatchupEntryDTO>& teamEntries)
        : matchup_round{matchupRound}
        , winner{winnerTeam}
        , entries{teamEntries}
    {}

    int id;
    int matchup_round;
    TeamDTO* winner;
    QList<MatchupEntryDTO> entries;
};

#endif // MATCHUPDTO_H
