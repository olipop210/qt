import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    property int aktywne_okno: 2
    property int aktywny_content: 0
    id: okno
    width: 540
    height: 960
    visible: true
    title: qsTr("podaj kim jestes przybyszu")
    color: "#953eb0"
    Logowanie
    {
        anchors.centerIn: parent
        visible: aktywne_okno == 1
        enabled: aktywne_okno == 1
        opacity: aktywne_okno == 1
    }
    MainMenu
    {
        anchors.centerIn: parent
        visible: aktywne_okno == 2
        enabled: aktywne_okno == 2
        opacity: aktywne_okno == 2
    }
}
