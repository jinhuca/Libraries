import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("C0204 Property Binding")

    Rectangle {
        id: redRectId
        width: 50
        height: width * 1.5     // Property binding
        color: "red"
    }

    Rectangle {
        id: blueRectId
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: parent.bottom
        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle {
        id: greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right
        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.height = 100   // (1) Replace the binding with a constant value: break the property binding
                redRectId.height = redRectId.width * 2.5    // (2) this is the same as the above
                redRectId.height = Qt.binding(() => {       // (3) set property binding
                    return redRectId.width * 2.5
                })
            }
        }
    }
}
