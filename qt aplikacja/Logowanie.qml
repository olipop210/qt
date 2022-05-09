import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick 2.15

Item {
    property string login: "abcd"
    id: panel
    property string password: "abcd"
    NumberAnimation on opacity
    {
        id: tfujStaryAnimowany
        to: 0
        duration: 2000
        running: false
        onFinished: aktywne_okno = 2, wynik.opacity = 0
    }
    Column
    {
        spacing: 50
        id: kolumna
        anchors.centerIn: parent
        width: 300
        height: 500
        Text
        {
            text: qsTr("Podaj kim jestes przybyszu")
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
            color: "white"
            id: tekstlogin
            text: qsTr("Login:")
        }
        TextField
        {
            anchors.horizontalCenter: parent.horizontalCenter
            id: login
            width: 200
            height: 40
            font.family: "Times New Roman"
            font.pointSize: 20
            focus: true
            textColor: "#006600"
            Rectangle
            {
                anchors.fill: parent
                color: "white"
                opacity: 0.3
            }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.pointSize: 20
            id: teksthaslo
            text: qsTr("Haslo:")
        }
        TextField
        {
            inputMethodHints: Qt.ImhHiddenText
            anchors.horizontalCenter: parent.horizontalCenter
            id: haslo
            width: 200
            height: 40
            textColor: "#953eb0"
            font.family: "Times New Roman"
            font.pointSize: 20
            focus: true
            echoMode:TextInput.Password
        }
        Button
        {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Zaloguj"
            width: 100
            height: 50
            onClicked:
            {
                if (login.displayText === "abcd" && haslo.text === "abcd")
                {
                    wynik.opacity = 1
                    wynik.text = qsTr("Zalogowano")
                    wynik.color = "#3bb83b"
                    login.text = ""
                    haslo.text = ""
                    tfujStaryAnimowany.running = true
                    panel.enabled = false
                }
                else
                {
                    wynik.opacity = 1
                    wynik.text = qsTr("Nie zalogowano")
                    wynik.color = "#cc4e4e"
                }
            }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: wynik
            text: qsTr("")
            opacity: 0
            font.pointSize: 40
            font.family: "Consolas"
        }
    }
}
