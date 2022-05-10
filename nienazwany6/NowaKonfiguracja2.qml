
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick 2.12

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
            id: kwGora
            width: 300
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "black"
            border.width: 2
            Text
            {
                id: napis1
                text: qsTr("Wybierz plyte glowna:")
                anchors.centerIn: parent
                font.pointSize: 15
            }
        }

        Rectangle
        {
            id: bigKw
            width: parent.width
            height: parent.height - 80 - 40 - 30; //wysokosc - kwGora - topPadding - spacing
            color: "transparent";
            anchors.horizontalCenter: parent.horizontalCenter

            ListView
            {

            }

        }


    }

    ListModel
    {

    }




}
