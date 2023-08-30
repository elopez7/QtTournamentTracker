#ifndef PERSONDTO_H
#define PERSONDTO_H

#include <QString>

struct PersonDTO
{
    PersonDTO(const QString& firstName,
              const QString& lastName,
              const QString& emailAddress,
              const QString& cellphoneNumber)
        : first_name{firstName}
        , last_name{lastName}
        , email_address{emailAddress}
        , cellphone_number{cellphoneNumber}
    {}

    int id;
    QString first_name;
    QString last_name;
    QString email_address;
    QString cellphone_number;
};

#endif // PERSONDTO_H
