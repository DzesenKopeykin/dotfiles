import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2
import QtQuick.Window 2.15

Item {
    property var user: userField.contentItem.text
    property var password: passwordField.text
    property var session: sessionPanel.currentIndex

    Row {
        spacing: 16

        anchors {
            bottom: parent.bottom
            left: parent.left
        }

        PowerButton {
            id: powerButton
        }

        RebootButton {
            id: rebootButton
        }

        SleepButton {
            id: sleepButton
        }

    }

    Column {
        anchors {
            bottom: parent.bottom
            right: parent.right
        }

        SessionPanel {
            id: sessionPanel
        }

    }

    Column {
        id: credentialFields

        spacing: 16
        width: 312

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

        UserField {
            id: userField

            height: 48
            width: parent.width
        }

        Row {
            height: 48
            width: parent.width
            spacing: 16

            PasswordField {
                id: passwordField

                height: parent.height
                width: parent.width - parent.spacing - loginButton.width
                onAccepted: loginButton.clicked()
            }

            LoginButton {
                id: loginButton

                height: parent.height
                width: 48
                enabled: user != "" && password != "" ? true : false
                onClicked: {
                    sddm.login(user, password, session);
                }
            }

        }

    }

    Connections {
        function onLoginFailed() {
            passwordField.text = "";
            passwordField.focus = true;
        }

        target: sddm
    }

}
