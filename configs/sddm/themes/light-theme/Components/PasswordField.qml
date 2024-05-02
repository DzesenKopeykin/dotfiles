import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
    id: passwordField

    focus: true
    placeholderText: "Password"
    placeholderTextColor: config.textPlaceholder
    echoMode: TextInput.Password
    passwordCharacter: "?"
    selectionColor: config.textSelection
    renderType: Text.NativeRendering
    color: config.textDefault
    horizontalAlignment: TextInput.AlignHCenter

    font {
        family: config.Font
        pixelSize: 20
    }

    background: Rectangle {
        id: passwordFieldBackground

        color: config.buttonBgNormal
        border.color: config.buttonBorderNormal
        border.width: 2
        radius: 5
    }

}
