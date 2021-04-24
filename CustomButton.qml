import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.12

Item {
    property string title: ""
    property CustomButton method

    Layout.fillWidth: true
    height: 40

    function action() {
        method.action()
    }

    Button {

        width: parent.width - 20
        height: 45
        anchors.horizontalCenter: parent.horizontalCenter

        text: qsTr(parent.title)

        highlighted: true
        Material.accent: Material.Orange

        onClicked: parent.action()
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
