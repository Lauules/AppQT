import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material 2.12

Window {
    id: screen
    width: 298
    height: 594
    visible: true
    title: qsTr("Application QT")

    Image {
        id: backgroundImage
        anchors.fill: parent

        source: "background.jpg"
        fillMode: Image.Tile
        opacity: 0.5
    }

    StackView {
        id: stack
        initialItem: mainView
        anchors.fill: parent
    }

    Component {
        id: mainView
        GridLayout {
            columns: 1
            anchors.bottom: parent.bottom
            height: 100
            Button {
                text: qsTr("se connecter")

                Layout.fillWidth: true
                Layout.rightMargin: 5
                Layout.leftMargin: 5
                Layout.preferredHeight: 40
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                highlighted: true
                Material.accent: Material.Orange

                onClicked: stack.push(loginView)
            }
            Button {
                text: qsTr("s'inscrire")

                Layout.fillWidth: true
                Layout.rightMargin: 5
                Layout.leftMargin: 5
                Layout.preferredHeight: 40
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                Layout.bottomMargin: 20

                highlighted: true
                Material.accent: Material.Orange

                onClicked: stack.push(registerView)
            }
        }
    }

    Component {
        id: loginView
        Item {
            id: bodyLogin

            Item {
                anchors.top: parent.top
                anchors.margins: 10
                width: 25; height: 25; x: 10
                Image {
                    id: returnLoginView
                    anchors.fill: parent
                    anchors.top: parent.top
                    source: "001-arrow.png"
                }
                MouseArea {
                   anchors.fill: parent
                   onClicked: stack.pop()
               }
            }

            GridLayout {
                height: 100
                columns: 1
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width

                Text {
                    text: qsTr("Entrer votre email")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: emailnput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: qsTr("Entrer votre mot de passe")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: passwordInput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    echoMode: TextInput.Password
                }

                Button {
                    text: qsTr("connexion")

                    Layout.fillWidth: true
                    Layout.rightMargin: 5
                    Layout.leftMargin: 5
                    Layout.preferredHeight: 40

                    highlighted: true
                    Material.accent: Material.Orange

                }

            }
        }
    }

    Component {
        id: registerView
        Item {
            id: bodyRegister

            Item {
                anchors.top: parent.top
                anchors.margins: 10
                width: 25; height: 25; x: 10
                Image {
                    id: returnLoginView
                    anchors.fill: parent
                    anchors.top: parent.top
                    source: "001-arrow.png"
                }
                MouseArea {
                   anchors.fill: parent
                   onClicked: stack.pop()
               }
            }

            GridLayout {
                id: form
                height: 200
                columns: 1
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width

                function clear() {
                    nameInput.clear()
                    surnameInput.clear()
                    emailInput.clear()
                    passwordInput.clear()
                }

                Text {
                    text: qsTr("Entrer votre nom")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: nameInput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: qsTr("Entrer votre prénom")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: surnameInput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: qsTr("Entrer votre email")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: emailInput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: qsTr("Entrer un mot de passe")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Input {
                    id: passwordInput
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    echoMode: TextInput.Password
                }

                Button {
                    text: qsTr("annuler")

                    Layout.fillWidth: true
                    Layout.rightMargin: 5
                    Layout.leftMargin: 5
                    Layout.preferredHeight: 40

                    highlighted: true
                    Material.accent: Material.Orange

                    onClicked: form.clear()
                }

                Button {
                    text: qsTr("créer mon compte")

                    Layout.fillWidth: true
                    Layout.rightMargin: 5
                    Layout.leftMargin: 5
                    Layout.preferredHeight: 40

                    highlighted: true
                    Material.accent: Material.Orange
                }

            }
        }

    }




}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
