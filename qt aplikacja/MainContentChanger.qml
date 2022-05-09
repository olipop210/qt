import QtQuick 2.0

Item {
    Rectangle
    {
        anchors.fill: parent
        color: "transparent"
        NowaKonfiguracja1
        {
            anchors.fill: parent
            visible: aktywny_content == 1
            enabled: aktywny_content == 1
        }
        NowaKonfiguracja2
        {
            anchors.fill: parent
            visible: aktywny_content == 2
            enabled: aktywny_content == 2
        }
    }
}
