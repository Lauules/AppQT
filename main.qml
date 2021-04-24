import QtQuick
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
        Item {
            id: bodyHome

            GridLayout {
                columns: 1
                anchors.bottom: parent.bottom
                anchors.margins: 10
                width: parent.width

                // Button pour se connecter
                // renvoie au formulaire de connexion
                CustomButton {
                    title: "se connecter"
                    function action() {
                        stack.push(loginView)
                    }
                }

                // Button pour s'inscrire
                // renvoie au formulaire d'inscription
                CustomButton {
                    title: "s'inscrire"
                    function action() {
                        stack.push(registerView)
                    }
                }
            }
        }
    }

    Component {
        id: loginView
        Item {
            id: bodyLogin

            // Bouton pour revenir sur la page arrière
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

                // input type text pour l'email
                Input {
                    id: emailInput
                    title: "Entrer votre email"
                }

                // input type password pour le mot de passe
                Input {
                    id: passwordInput
                    title: "Entrer votre mot de passe"
                    echoMode: TextInput.Password
                }

                // Button pour se connecter
                CustomButton {
                    title: "connexion"
                    function action() {
                        console.log("l'utilisateur se connecte")
                    }
                }

            }
        }
    }

    Component {
        id: registerView
        Item {
            id: bodyRegister

            // Bouton pour revenir sur la page arrière
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

                // input type text pour le nom
                Input {
                    id: nameInput
                    title: "Entrer votre nom"
                }

                // input type text pour le prénom
                Input {
                    id: surnameInput
                    title: "Entrer votre prénom"
                }

                // input type text pour l'email
                Input {
                    id: emailInput
                    title: "Entrer votre email"
                }

                // input type password pour le mot de passe
                Input {
                    id: passwordInput
                    title: "Entrer un mot de passe"
                    echoMode: TextInput.Password
                }

                // Bouton annuler
                // Permet d'effacer les champs
                CustomButton {
                    title: "annuler"
                    function action() {
                        form.clear()
                    }
                }

                // Bouton pour créer un compte
                CustomButton {
                    title: "créer mon compte"
                    function action() {
                        console.log("l'utilisateur créé son compte")
                    }
                }

            }
        }

    }




}


