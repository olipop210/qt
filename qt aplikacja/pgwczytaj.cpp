#include "pgwczytaj.h"
#include "plytaglowna.h"
#include <fstream>
#include <vector>
#include <string>
#include <QObject>
pgwczytaj::pgwczytaj(QObject *parent)
    : QObject{parent}
{
    wczytaj();
}

void pgwczytaj::wczytaj()
{
    string temp = "";
    plytaglowna tempplyta;
    string tempsocket, tempchipset, tempmodel;
    int tempid, temppcie16, tempdimms, tempm2;
    fstream plik;
    plik.open("test.txt", ios::in);
    while(true)
    {
        getline(plik, temp);
        if(temp == "EOF"){break;}
        tempid = stoi(temp);
        getline(plik, temp);
        tempmodel = temp;
        getline(plik, temp);
        tempsocket = temp;
        getline(plik, temp);
        tempchipset = temp;
        getline(plik, temp);
        temppcie16 = stoi(temp);
        getline(plik, temp);
        tempdimms = stoi(temp);
        getline(plik, temp);
        tempm2 = stoi(temp);
        tempplyta.wczytaj(tempid, tempmodel, tempsocket, tempchipset, temppcie16, tempdimms, tempm2);
        plyty.push_back(tempplyta);
    }

}
