import QtQuick 1.1

Rectangle {
    width: 300
    height: 300
    property string days

    function parseDate(str){
        var t = str.match(/^(\d{2})\/(\d{2})\/(\d{4})$/);
        if (t!==null) {
            var d = + t[1], m = + t[2], y = + t[3]
            var date = new Date(y,m-1,d)
            if (date.getFullYear()===y && date.getMonth()===m-1){
                date1 = date
            }
        }
        return null
    }

    function test() {
        var date1 = new Date(input.text)
        var date2 = new Date(input2.text)
        var timeDiff = Math.abs(date2.getTime() - date1.getTime());
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
        days = diffDays
    }

    InputComponent {
        id: input
        anchors {
            top: parent.top; topMargin: 50
            left: parent.left; leftMargin: 20
        }
    }

    InputComponent {
        id: input2
        anchors {
            top: parent.top; topMargin: 50
            left: input.right; leftMargin: 50
        }
    }

    Button {
        id: button

        anchors {
            top: input.bottom; topMargin: 20
            left: parent.left; leftMargin: 100
        }
        onClicked: {
            test()
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
