import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Handlers")

    Rectangle {
        id: rectId
        width: 200
        height: 170
        color: "green"
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            /*
            onClicked: {
                console.log("Clicked!")
            }
            onDoubleClicked: {
                console.log("Double Clicked!")
            }
            onEntered: {
                console.log("Entered!")
            }
            onExited: {
                console.log("Exited!")
            }
            onWheel: wheel => {
                         console.log(wheel.x)
                     }
*/
            onPositionChanged: mouse => {
                                   console.log("Position changed, x: " + mouse.x + ",y: "+ mouse.y)
                               }
        }
    }
}
