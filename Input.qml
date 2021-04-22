import QtQuick 2.0

Rectangle {

    property string echoMode

    width: parent.width - 20
    height: 30
    anchors.margins: 10

    color: "white"
    radius: 4

    function clear() {
        textInput.clear()
    }

    TextInput {
        id: textInput
        anchors.fill: parent
        anchors.centerIn: parent
        color: focus ? "black" : "gray"
        echoMode: parent.echoMode | TextInput.Normal
    }
}
