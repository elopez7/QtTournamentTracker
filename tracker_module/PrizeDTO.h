#ifndef PRIZEDTO_H
#define PRIZEDTO_H

#include <QString>

struct PrizeDTO
{
    PrizeDTO(int placeNumber,
             const QString& placeName,
             double prizeAmount,
             double prizePercentage)
        : place_number{placeNumber}
        , place_name{placeName}
        , prize_amount{prizeAmount}
        , prize_percentage{prizePercentage}
    {}

    int id;
    int place_number;
    QString place_name;
    double prize_amount;
    double prize_percentage;
};

#endif // PRIZEDTO_H
