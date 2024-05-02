import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    implicitHeight: sleepButton.height
    implicitWidth: sleepButton.width

    Button {
        id: sleepButton

        height: 48
        width: 48
        hoverEnabled: true
        onClicked: sddm.suspend()
        states: [
            State {
                name: "pressed"
                when: sleepButton.down

                PropertyChanges {
                    sleepButtonBackground {
                        border.color: config.buttonBorderPressed
                        color: config.buttonBgPressed
                    }

                }

            },
            State {
                name: "hovered"
                when: sleepButton.hovered

                PropertyChanges {
                    sleepButtonBackground {
                        border.color: config.buttonBorderHovered
                        color: config.buttonBgHovered
                    }

                }

            }
        ]

        icon {
            height: 20
            width: 20
            source: Qt.resolvedUrl("../icons/sleep.svg")
            color: config.textDefault
        }

        background: Rectangle {
            id: sleepButtonBackground

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
