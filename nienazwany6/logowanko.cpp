#include "logowanko.h"
#include <string>
#include <fstream>
using namespace std;
logowanko::logowanko(QObject *parent) : QObject(parent)
{
    connect(this, SIGNAL(registerFinishedGood()), this, SLOT(handleRegisterFinishedGood()));
    connect(this, SIGNAL(registerFinishedError()), this, SLOT(handleRegisterFinishedError()));
    connect(this, SIGNAL(loginFinishedGood()), this, SLOT(handleLoginFinishedGood()));
    connect(this, SIGNAL(loginFinishedError()), this, SLOT(handleLoginFinishedError()));
}

void logowanko::rejestruj(string login, string haslo)
{
    string temp;
    fstream plik;
    plik.open("loginy.txt", ios::in | ios::app);
    while(getline(plik, temp))
    {
        if(temp == login)
        {
            emit registerFinishedError();

        }

    }
    plik << login << endl;
    plik.close();
    plik.open("hasla.txt", ios::app);
    plik << haslo << endl;
    plik.close();
    emit registerFinishedGood();

}

bool logowanko::loguj(QString login, QString haslo)
{
    string templogin, temphaslo;
    fstream plikLoginy; fstream plikHasla;
    plikLoginy.open("loginy.txt", ios::in);
    plikHasla.open("hasla.txt", ios::in);

    while(getline(plikLoginy, templogin))
    {
        getline(plikHasla, temphaslo);
        if(templogin == login.toStdString() && temphaslo == haslo.toStdString())
        {

            emit loginFinishedGood();
            return true;
        }
    }
    emit loginFinishedError();
    return false;
}

void logowanko::handleLoginFinishedGood()
{

}

void logowanko::handleRegisterFiniedGood()
{

}

void logowanko::handleLoginFinishedError()
{

}

void logowanko::handleRegisterFiniedError()
{

}
