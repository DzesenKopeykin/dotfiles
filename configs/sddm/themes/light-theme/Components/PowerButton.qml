import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    implicitHeight: powerButton.height
    implicitWidth: powerButton.width

    Button {
        id: powerButton

        height: 48
        width: 48
        hoverEnabled: true
        onClicked: sddm.powerOff()
        states: [
            State {
                name: "pressed"
                when: powerButton.down

                PropertyChanges {
                    powerButtonBackground {
                        border.color: config.buttonBorderPressed
                        color: config.buttonBgPressed
                    }

                }

            },
            State {
                name: "hovered"
                when: powerButton.hovered

                PropertyChanges {
                    powerButtonBackground {
                        border.color: config.buttonBorderHovered
                        color: config.buttonBgHovered
                    }

                }

            }
        ]

        icon {
            height: 20
            width: 20
            source: Qt.resolvedUrl("../icons/power.svg")
            color: config.textDefault
        }

        background: Rectangle {
            id: powerButtonBackground

            border.color: config.buttonBorderNormal
            border.width: 2
            color: config.buttonBgNormal
            radius: 5
        }

        transitions: Transition {
            PropertyAnimation {
                properties: "color"
                duration: 300
            }

        }

    }

}
