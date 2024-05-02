import QtQml.Models 2.15
import QtQuick 2.15
import QtQuick.Controls 2.15

ComboBox {
    id: sessionSelector

    height: 48
    width: height * 5
    model: sessionModel
    textRole: "name"
    currentIndex: sessionModel.lastIndex

    background: Rectangle {
        id: sessionSelectorBackground

        border.color: config.selectorBorderNormal
        border.width: 2
        color: config.selectorBgNormal
        radius: 5
    }

    delegate: ItemDelegate {
        id: itemSessionSelector

        required property var model
        required property int index

        height: sessionSelector.height
        width: sessionSelector.width
        padding: 10
        highlighted: sessionSelector.highlightedIndex === index

        background: Rectangle {
            id: sessionItemBackground

            color: highlighted ? config.selectorItemBgPicked : null
            visible: highlighted
        }

        contentItem: Text {
            text: itemSessionSelector.model.name
            color: config.textDefault
            font.family: config.Font
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            font {
                family: config.Font
                pixelSize: 18
            }

        }

    }

    contentItem: Text {
        leftPadding: 8
        text: sessionSelector.displayText
        font.family: config.Font
        color: config.textDefault
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font {
            family: config.Font
            pixelSize: 18
        }

    }

    indicator: ToolButton {
        id: sessionSelectorIndicator

        height: parent.height
        width: 24
        onClicked: sessionSelectorPopup.opened ? sessionSelectorPopup.close() : sessionSelectorPopup.open()

        anchors {
            right: parent.right
            rightMargin: 8
        }

        icon {
            source: sessionSelectorPopup.opened ? Qt.resolvedUrl("../icons/arrow-down.svg") : Qt.resolvedUrl("../icons/arrow-up.svg")
            color: config.textDefault
        }

        background: Rectangle {
            visible: false
        }

    }

    popup: Popup {
        id: sessionSelectorPopup

        y: sessionSelector.height + 5
        width: sessionSelector.width
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
            model: sessionSelector.delegateModel
            currentIndex: sessionSelector.highlightedIndex
            delegate: sessionSelector.delegate
        }

        background: Rectangle {
            id: sessionPopupBackground

            border.color: config.selectorBorderNormal
            border.width: 2
            color: config.selectorBgNormal
            radius: 5
        }

    }

}
