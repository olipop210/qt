#ifndef LOGOWANKO_H
#define LOGOWANKO_H

#include <QObject>
#include <QString>
#include <string>

class logowanko : public QObject
{
    Q_OBJECT
public:
    explicit logowanko(QObject *parent = nullptr);

    Q_INVOKABLE void rejestruj(std::string login, std::string haslo);
    Q_INVOKABLE bool loguj(QString login, QString haslo);

signals:
    void loginFinishedGood();
    void registerFinishedGood();
    void loginFinishedError();
    void registerFinishedError();

public slots:
    void handleLoginFinishedGood();
    void handleRegisterFiniedGood();
    void handleLoginFinishedError();
    void handleRegisterFiniedError();

};

#endif // LOGOWANKO_H
