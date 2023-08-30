#ifndef MATCHUPENTRYDTO_H
#define MATCHUPENTRYDTO_H

class TeamDTO;
class MatchupDTO;

struct MatchupEntryDTO
{
    MatchupEntryDTO(double score,
                    TeamDTO* teamCompeting,
                    MatchupDTO* parentMatchup)
        : score{score}
        , team_competing{teamCompeting}
        , parent_matchup{parentMatchup}
    {}

    int id;
    double score;
    TeamDTO* team_competing;
    MatchupDTO* parent_matchup;
};

#endif // MATCHUPENTRYDTO_H
