import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scopes")

    Rectangle {
        id: mRectId
        anchors.centerIn: parent
        color: "blue"
        width: min(500, 100)
        height: 100
        MouseArea {
            anchors.fill: parent
            onClicked: function() {
                mRectId.sayMessage()
            }
        }
        // Set up a function inside this rectangle
        function sayMessage() {
            console.log("Hello there.")
        }
    }

    // Function in the global scope
    function min(a, b): real {
        return Math.min(a, b)
    }

    // Call the function in global scope
    Component.onCompleted: {
        console.log("The minimum is " + min(100, 200))
        mRectId.sayMessage()
    }
}
