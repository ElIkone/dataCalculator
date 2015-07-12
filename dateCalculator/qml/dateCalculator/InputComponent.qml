import QtQuick 1.1

Rectangle {
    property alias text: input.text
    property alias focusInput: input.focus

    width: 100
    height: 40
    border.color: "#000000"
    border.width: 1

    TextInput {
        id: input

        anchors {
            top: parent.top; topMargin: 14
            left: parent.left; leftMargin: 10
            right: parent.right; rightMargin: 10
        }
        font.pixelSize: 14
        width: parent.width
        height: parent.height
        maximumLength: 10
        focus: true
    }
}
