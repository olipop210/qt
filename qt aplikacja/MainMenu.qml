import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick 2.15

Item
{
    property string poprzedni_napis: "Panel główny"
    id: panel
    NumberAnimation on opacity
    {
        id: tfujStaryAnimowany
        to: 0
        duration: 2000
        running: false
        onFinished: aktywne_okno = 1, panelLogowania.enabled = true
    }
    anchors.fill: parent
    Rectangle
    {
        color: "#953eb0"
        id: mainContent
        width: parent.width
        height: parent.height - pasek.height
        anchors.top: pasek.bottom
        anchors.left: parent.left
        MainContentChanger
        {
            anchors.fill: mainContent
        }
    }
    Rectangle
    {
        Text
        {
            anchors.centerIn: pasek
            id: napisnapasku
            text: qsTr("Panel główny")
            color: "black"
            font.pointSize: 20
        }
        border.color: "black"
        border.width: 2
        id: pasek
        width: okno.width
        height: Math.max(okno.height / 10, 96)
        anchors.left: okno.left
        Rectangle
        {
            id: przyciskPanel
            color: "transparent"
            width: 60
            height: 60
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            Image
            {
                source: "menuicon.svg"
                anchors.fill: parent
                RotationAnimation on rotation
                {
                    id: animacjaObrot
                    from: 0
                    to: 90
                    direction: RotationAnimation.Clockwise
                    duration: 500
                    running: false
                }
                RotationAnimation on rotation
                {
                    id: animacjaObrot2
                    from: 90
                    to: 0
                    direction: RotationAnimation.Counterclockwise
                    duration: 500
                    running: false
                }
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    bocznyPanel.aktywny = !bocznyPanel.aktywny
                    if (bocznyPanel.aktywny === false)
                    {
                        napisnapasku.text = qsTr("Menu")
                        bocznyPanel.visible = true
                        pokaz.running = true
                        blackPanel.visible = true
                        pokaz1.running = true
                        animacjaObrot.running = true
                    }
                    else
                    {
                        animacjaObrot2.running = true
                        ukryj.running = true
                        ukryj1.running = true
                    }
                }
            }
        }
        Rectangle
        {
            id: przyciskWyloguj
            anchors.right: pasek.right
            anchors.rightMargin: 20
            width: 120
            height: 60
            anchors.top: parent.top
            anchors.topMargin: 20
            border.color: "black"
            border.width: 3
            Text
            {
                text: qsTr("Wyloguj")
                color: "black"
                font.pointSize: 20
                anchors.centerIn: parent
            }
            MouseArea
            {
                anchors.fill: przyciskWyloguj
                onClicked:
                {
                    tfujStaryAnimowany.running = true
                    panel.enabled = false
                }
            }
        }
    }
    Rectangle
    {
        border.color: "black"
        border.width: 2
        property bool aktywny: true
        id: bocznyPanel
        visible: false
        enabled: visible
        width: parent.width * 0.6
        height: parent.height - pasek.height
        anchors.top: pasek.bottom
        NumberAnimation on x
        {
            id: pokaz
            running: false
            from: -1 * pasek.width
            to: 0
            duration: 500
            onFinished: bocznyPanel.visible = true

        }
        NumberAnimation on x
        {

            id: ukryj
            running: false
            from: 0
            to: -1 * pasek.width
            duration: 500
            onFinished:    bocznyPanel.visible = false

        }

        Column
        {
            topPadding: 20
            id: kolumnaPanel
            spacing: 30
            width: bocznyPanel.width
            height: bocznyPanel.height
            anchors.centerIn: parent
            Rectangle
            {
                id: przycisk1
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.8
                border.color: "black"
                border.width: 2
                height: 60
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        bocznyPanel.aktywny = !bocznyPanel.aktywny
                        ukryj.running = true
                        ukryj1.running = true
                        animacjaObrot2.running = true
                        napisnapasku.text = qsTr("Nowa konfiguracja")
                        aktywny_content = 1
                    }
                }
                Text
                {
                    anchors.centerIn: parent
                    id: napis1
                    text: qsTr("Nowa konfiguracja")
                    color: "black"
                    font.pointSize: 20
                }
            }
            Rectangle
            {
                id: przycisk2
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.8
                border.color: "black"
                border.width: 2
                height: 60
                MouseArea
                {
                    anchors.fill: parent
                }
                Text
                {
                    anchors.centerIn: parent
                    id: napis2
                    text: qsTr("Wczytaj Konfiguracje")
                    color: "black"
                    font.pointSize: 20
                }
            }
            Rectangle
            {
                id: przycisk3
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.8
                border.color: "black"
                border.width: 2
                height: 80
                MouseArea
                {
                    anchors.fill: parent
                }
                Text
                {
                    textFormat: Text.StyledText
                    anchors.centerIn: parent
                    id: napis3
                    text: qsTr("Zarządzanie <br> konfiguracjami")
                    color: "black"
                    font.pointSize: 20
                }
            }
            Rectangle
            {
                id: przycisk4
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.8
                border.color: "black"
                border.width: 2
                height: 60
                MouseArea
                {
                    anchors.fill: parent
                }
                Text
                {
                    anchors.centerIn: parent
                    id: napis4
                    text: qsTr("Wyjscie")
                    color: "black"
                    font.pointSize: 20
                }
            }
        }
    }
    Rectangle
    {
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                bocznyPanel.aktywny = !bocznyPanel.aktywny
                ukryj.running = true
                ukryj1.running = true
                animacjaObrot2.running = true
            }
        }
        color: "black"
        property bool aktywny: false
        id: blackPanel
        visible: false
        enabled: visible
        opacity: 0
        width: parent.width * 0.4
        height: parent.height - pasek.height
        anchors.top: pasek.bottom
        anchors.left: bocznyPanel.right
        NumberAnimation on opacity
        {
            id: pokaz1
            running: false
            from: 0
            to: 0.5
            duration: 500
            onFinished: blackPanel.visible = true
        }
        NumberAnimation on opacity
        {
            id: ukryj1
            running: false
            from: 0.5
            to: 0
            duration: 500
            onFinished: napisnapasku.text = qsTr(poprzedni_napis), blackPanel.visible = false
        }
    }
}
