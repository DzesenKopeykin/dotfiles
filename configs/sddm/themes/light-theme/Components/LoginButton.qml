import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: loginButton

    states: [
        State {
            name: "pressed"
            when: loginButton.down

            PropertyChanges {
                loginButtonBackground {
                    border.color: config.buttonBorderPressed
                    color: config.buttonBgPressed
                }

            }

        },
        State {
            name: "hovered"
            when: loginButton.hovered

            PropertyChanges {
                loginButtonBackground {
                    border.color: config.buttonBorderHovered
                    color: config.buttonBgHovered
                }

            }

        },
        State {
            name: "enabled"
            when: loginButton.enabled

            PropertyChanges {
                loginButtonBackground {
                    border.color: config.buttonBorderEnabled
                    color: config.buttonBgEnabled
                }

            }

        }
    ]

    icon {
        width: 24
        height: 16
        source: Qt.resolvedUrl("../icons/login.svg")
        color: config.textDefault
    }

    background: Rectangle {
        id: loginButtonBackground

        color: config.buttonBgNormal
        border.color: config.buttonBorderNormal
        border.width: 2
        radius: 5
    }

    transitions: Transition {
        PropertyAnimation {
            properties: "color"
            duration: 300
        }

    }

}
