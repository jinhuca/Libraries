import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "dodgerblue"

        MouseArea{
            id: mouseAreaId
            anchors.fill: parent
        }
    }

    Connections {
        target: mouseAreaId     // the source of the signal
        function onClicked() {
            console.log("Clicked on the mouse area")
        }

        function onDoubleClicked(mouse) {
            console.log("Double clicked at: " + mouse.x)
        }
    }
}
