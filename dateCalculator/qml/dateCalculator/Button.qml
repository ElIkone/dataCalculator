import QtQuick 1.1

Rectangle {
    width: 100
    height: 62
    color: "#3333FF"
    signal clicked
    signal pressed
    signal released

    function action() {
        clicked()
    }

    function press() {
        pressed()
    }

    function releaseAction() {
        released()
    }

    Text {
        anchors.centerIn: parent
        font.pixelSize: 14
        color: "#FFFFFF"
        text: "Get Result"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            action()
        }
        onPressed:  {
            press()
        }
        onReleased: {
            releaseAction()
        }
    }
}
