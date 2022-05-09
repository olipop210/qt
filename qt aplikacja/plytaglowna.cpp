#include "plytaglowna.h"
#include <QObject>
plytaglowna::plytaglowna(QObject *parent)
    : QObject{parent}
{
    id = 0;
    model = "";
    socket = "";
    chipset = "";
    pcie16 = 0;
    dimms = 0;
    m2 = 0;
}

void plytaglowna::wczytaj(int id,string model, string socket, string chipset, int pcie16, int dimms, int m2)
{
    this->id = id;
    this->socket = socket;
    this->chipset = chipset;
    this->pcie16 = pcie16;
    this->dimms = dimms;
    this->m2 = m2;
}
