import QtQuick 2.15
import QtQuick.Controls 2.15

ComboBox {
    id: userSelector

    height: 48
    width: height * 5
    model: userModel
    textRole: "name"
    currentIndex: userModel.lastIndex

    background: Rectangle {
        id: userSelectorBackground

        border.color: config.selectorBorderNormal
        border.width: 2
        color: config.selectorBgNormal
        radius: 5
    }

    delegate: ItemDelegate {
        id: itemUserSelector

        required property var model
        required property int index

        height: userSelector.height
        width: userSelector.width
        highlighted: userSelector.highlightedIndex === index

        background: Rectangle {
            id: userItemBackground

            color: highlighted ? config.selectorItemBgPicked : null
            visible: highlighted
        }

        contentItem: Text {
            text: itemUserSelector.model.name
            color: config.textDefault
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            font {
                family: config.Font
                pixelSize: 20
            }

        }

    }

    contentItem: Text {
        leftPadding: 20
        text: userSelector.displayText
        color: config.textDefault
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font {
            family: config.Font
            pixelSize: 24
        }

    }

    indicator: ToolButton {
        id: userSelectorIndicator

        height: parent.height
        width: 24
        onClicked: userSelectorPopup.opened ? userSelectorPopup.close() : userSelectorPopup.open()

        anchors {
            right: parent.right
            rightMargin: 8
        }

        icon {
            source: userSelectorPopup.opened ? Qt.resolvedUrl("../icons/arrow-up.svg") : Qt.resolvedUrl("../icons/arrow-down.svg")
            color: config.textDefault
        }

        background: Rectangle {
            visible: false
        }

    }

    popup: Popup {
        id: userSelectorPopup

        y: userSelector.height + 5
        width: userSelector.width
        leftPadding: 0
        rightPadding: 0
        bottomPadding: 7
        topPadding: 7

        enter: Transition {
            NumberAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 256
            }

        }

        exit: Transition {
            NumberAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 256
            }

        }

        contentItem: ListView {
            implicitHeight: contentHeight
            model: userSelector.delegateModel
            currentIndex: userSelector.highlightedIndex
            delegate: userSelector.delegate
        }

        background: Rectangle {
            id: userPopupBackground

            border.color: config.selectorBorderNormal
            border.width: 2
            color: config.selectorBgNormal
            radius: 5
        }

    }

}
