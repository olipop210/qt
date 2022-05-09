#ifndef WCZYTYWANIE_PLYT_H
#include <QtQml/qqml.h>
#define WCZYTYWANIE_PLYT_H



class wczytywanie_plyt : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString model READ model WRITE setmodel NOTIFY modelChanged)
    Q_PROPERTY(QString marka READ marka WRITE setmarka NOTIFY markaChanged)
    QML_ELEMENT
public:
    wczytywanie_plyt();

};

#endif // WCZYTYWANIE_PLYT_H
