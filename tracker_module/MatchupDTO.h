#ifndef MATCHUPDTO_H
#define MATCHUPDTO_H

#include <QList>

class MatchupEntryDTO;
class TeamDTO;

struct MatchupDTO
{
    QList<MatchupEntryDTO> entries;
    TeamDTO* winner;
    int matchup_round;
};

#endif // MATCHUPDTO_H
