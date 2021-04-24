import QtQuick

Item {
    property string echoMode
    property string title: ""

    width: parent.width
    height: 50

    function clear() {
        textInput.clear()
    }

    Text {
        text: qsTr(parent.title)
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        property string echoMode: parent.echoMode

        width: parent.width - 20
        height: 30
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        color: "white"
        radius: 4

        TextInput {
            id: textInput
            anchors.fill: parent
            anchors.centerIn: parent
            color: focus ? "black" : "gray"
            echoMode: parent.echoMode | TextInput.Normal
        }
    }
}


