import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript")

    Rectangle {
        id: containerRectId
        width: 200
        height: get_height()                         // this Js in action
        color: x > 300 ? "red" : "green"            // Property binding

        onXChanged: function() {
            console.log("x: " + x + ", y: " + y);   // signal handler
        }

        function get_height() {                      // JS function
            return width * 2
        }
    }
    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAndYAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width
        drag.minimumY: 0
        drag.maximumY: parent.height - containerRectId.height
    }
}
