import QtQuick 1.1

Rectangle {
    width: 100
    height: 62
    color: "#3333FF"
    signal clicked

    function action() {
        clicked()
    }

    Text {
        anchors.centerIn: parent
        font.pixelSize: 14
        color: "#FFFFFF"
        text: "Aprietame"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            action()
        }
    }
}
