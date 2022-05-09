#ifndef PLYTAGLOWNA_H
#define PLYTAGLOWNA_H

#include <QObject>
#include <string>
using namespace std;
class plytaglowna : public QObject
{
    Q_OBJECT
public:
    explicit plytaglowna(QObject *parent = nullptr);

public slots:
    int id;
    string model;
    string socket;
    string chipset;
    int pcie16;
    int dimms;
    int m2;
    void wczytaj(int id, string model, string socket, string chipset, int pcie16, int dimms, int m2);

signals:

};

#endif // PLYTAGLOWNA_H
