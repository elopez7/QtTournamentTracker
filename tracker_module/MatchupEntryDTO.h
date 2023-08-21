#ifndef MATCHUPENTRYDTO_H
#define MATCHUPENTRYDTO_H

class TeamDTO;
class MatchupDTO;

struct MatchupEntryDTO
{
    TeamDTO* team_competing;
    double score;
    MatchupDTO* parent_matchup;
};

#endif // MATCHUPENTRYDTO_H
