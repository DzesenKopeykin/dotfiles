import QtQuick 2.15
import SddmComponents 2.0

Loader {
    id: clockLoader

    Component.onCompleted: {
        switch (config.ClockPosition) {
        case "left":
            time.anchors.left = parent.left;
            break;
        case "right":
            time.anchors.right = parent.right;
            break;
        case "center":
            time.anchors.horizontalCenter = parent.horizontalCenter;
            break;
        default:
            console.warn("Unsupported clock position:", config.ClockPosition);
        }
    }

    anchors {
        topMargin: parent.height * 0.25
        top: parent.top
    }

    sourceComponent: Clock {
        id: time

        color: config.textDefault
        timeFont.family: config.Font
        timeFont.pixelSize: 80
        dateFont.family: config.Font
        dateFont.pixelSize: 32
    }

}
