import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 720
    height: 720
    visible: true
    title: qsTr("podaj kim jestes przybyszu")
    color: "#953eb0"
    Column
    {

    spacing: 100

    anchors.centerIn: parent
    width: 300
    height: 500

    Text
    {
        text: qsTr("podaj kim jestes przybyszu")
        color: "black"
        anchors.centerIn: parent
        id: "text1"
        font.pointSize: 20
    }

    TextEdit
    {
        anchors.centerIn: parent
        width: 100
        height: 20
        color: "white"
        font.family: "Times New Roman"
        font.pointSize: 20
        focus: true
    }

    }
}
