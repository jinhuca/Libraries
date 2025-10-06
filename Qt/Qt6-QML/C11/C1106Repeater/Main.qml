import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Repeater")
    /*
    Row {
        Repeater {
            model: 3
            Rectangle {
                width: 100; height: 40
                border.width: 1
                color: "yellow"
            }
        }
    }
*/
    /*
    Column {
        spacing: 20
        Repeater {
            model: ["One", "Two", "Three"]
            // model: 10
            Text {
                id: name
                text: modelData
                font.pixelSize: 20
            }
        }
    }
*/

    Flickable {
        contentHeight: columid.implicitHeight
        anchors.fill: parent
        Column {
            id: columid
            anchors.fill: parent
            spacing: 2

            Repeater {
                model: [-1, 0, 1, "H"]
                // model: 10
                Rectangle {
                    width: parent.width
                    height: 50
                    color: "dodgerblue"
                    Text {
                        anchors.centerIn: parent
                        text: modelData
                        font.pointSize: 20
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.info("Clicked on: " + modelData)
                        }
                    }
                }
            }
        }
    }

}
