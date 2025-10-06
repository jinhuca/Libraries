import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Parameters")

    Rectangle {
        id: rectId
        width: 150
        height: 150
        color: "green"

        MouseArea {
            anchors.fill: parent

            // Syntax variant #1:
            // onClicked: {
            //     console.log("Position x: " + mouse.x + ", y: " + mouse.y)
            // }

            // Syntax variant #2: JavaScript functions
            // onClicked: function(e) {
            //     console.log("Position x: " + e.x + ", y: " + e.y)
            // }

            // Syntax variant #3: Arrow functions
            onClicked: e => {
                            console.log("Position x: " + e.x + ", y: " + e.y)
                      }
        }
    }
}
