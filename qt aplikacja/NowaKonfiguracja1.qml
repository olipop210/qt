import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick 2.15

Item {
    id: itemm
    Column
    {
        id: kolumna
        spacing: 30
        width: parent.width
        height: parent.height
        topPadding: 40
        Rectangle
        {
            width: 300
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "black"
            border.width: 2
            Text
            {
                id: napis1
                text: qsTr("Nazwa konfiguracji")
                anchors.centerIn: parent
                font.pointSize: 15
            }

        }
        TextField
        {
            width: 300
            height: 80
            id: nazwa
            placeholderText: "Wprowadz nazwe..."
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
            onEditingFinished:
            {
                if(nazwa.text != "")
                {
                    napis2.text = qsTr("Dalej")
                    przycisk1.enabled = true
                }
            }
        }
        Rectangle
        {
            width: 300
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "black"
            border.width: 2
            Text
            {
                id: napis2
                text: qsTr("Najpierw nazwa")
                anchors.centerIn: parent
                font.pointSize: 15
            }
            MouseArea
            {
                anchors.fill: parent
                id: przycisk1
                enabled: false
                onClicked:
                {
                    itemm.enabled = false
                    itemm.visible = false
                    aktywny_content = 2

                }
            }
        }
    }
}
