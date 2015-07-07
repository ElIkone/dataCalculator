import QtQuick 1.1

Rectangle {
    property alias text: input.text

    width: 100
    height: 50
    border.color: "black"
    border.width: 1

    TextInput {
        id: input
        anchors {
            top: parent.top; topMargin: 20
            left: parent.left; leftMargin: 10
            right: parent.right; rightMargin: 10
        }
        font.pixelSize: 14
        width: parent.width
        height: parent.height
        maximumLength: 10
    }
}
