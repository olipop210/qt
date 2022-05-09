#ifndef PGWCZYTAJ_H
#define PGWCZYTAJ_H

#include <QObject>
#include "plytaglowna.h"
#include <vector>
#include <string>
#include <fstream>

class pgwczytaj : public QObject
{
    Q_OBJECT
public:
    explicit pgwczytaj(QObject *parent = nullptr);
    Q_PROPERTY( vector <plytaglowna> plyty READ getPlyty WRITE setPlyty NOTIFY plytyChanged);
public slots:
    vector <plytaglowna> plyty;
    void wczytaj();

signals:

};

#endif // PGWCZYTAJ_H
