import QtQuick 1.1

Rectangle {
    width: 300
    height: 200
    property string days

    function calculateDays() {
        var date1 = new Date(input.text)
        var date2 = new Date(input2.text)
        var timeDiff = Math.abs(date2.getTime() - date1.getTime())
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24))
        days = diffDays
    }

    Component.onCompleted: input.focusInput = true

    InputComponent {
        id: input
        anchors {
            top: parent.top; topMargin: 50
            left: parent.left; leftMargin: 20
        }
        Keys.onRightPressed: {
            input2.focusInput = true
        }
    }

    InputComponent {
        id: input2
        anchors {
            top: parent.top; topMargin: 50
            left: input.right; leftMargin: 50
        }
        Keys.onLeftPressed: {
            input.focusInput = true
        }
    }

    Button {
        id: button

        anchors {
            top: input.bottom; topMargin: 20
            left: parent.left; leftMargin: 100
        }
        onClicked: {
            calculateDays()
        }
        onPressed: {
            button.color = "#C80000"
        }
        onReleased:  {
            button.color = "#3333FF"
        }
    }

    Label {
        anchors {
            top: button.bottom; topMargin: 10
            left: parent.left; leftMargin: 20
        }
        color: "black"
        text: "Result: " + days
    }
}
