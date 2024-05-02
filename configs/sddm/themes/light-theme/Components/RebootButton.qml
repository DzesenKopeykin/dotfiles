import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    implicitHeight: rebootButton.height
    implicitWidth: rebootButton.width

    Button {
        id: rebootButton

        height: 48
        width: 48
        hoverEnabled: true
        onClicked: sddm.reboot()
        states: [
            State {
                name: "pressed"
                when: rebootButton.down

                PropertyChanges {
                    rebootButtonBackground {
                        border.color: config.buttonBorderPressed
                        color: config.buttonBgPressed
                    }

                }

            },
            State {
                name: "hovered"
                when: rebootButton.hovered

                PropertyChanges {
                    rebootButtonBackground {
                        border.color: config.buttonBorderHovered
                        color: config.buttonBgHovered
                    }

                }

            }
        ]

        icon {
            height: 20
            width: 20
            source: Qt.resolvedUrl("../icons/reboot.svg")
            color: config.textDefault
        }

        background: Rectangle {
            id: rebootButtonBackground

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
