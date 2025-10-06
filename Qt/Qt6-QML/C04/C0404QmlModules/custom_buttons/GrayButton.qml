import QtQuick

Item {
    id: rootId

    width: containerRectId.width
    height: containerRectId.height

    property alias buttonText: buttonTextId.text
    signal buttonClicked

    Rectangle {
        id: containerRectId
        color: "gray"
        width: buttonTextId.implicitWidth + 10
        height: buttonTextId.implicitHeight + 10
        border {
            color: "yellow"
            width: 3
        }

        Text {
            id: buttonTextId
            text: qsTr("Gray Button")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rootId.buttonClicked()  // Emit your signal
            }
        }
    }
}
