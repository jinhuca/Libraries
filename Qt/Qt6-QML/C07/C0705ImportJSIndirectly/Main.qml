import QtQuick
import "utility1.js" as Ut1

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("JavaScript Indirectly Import")

    Rectangle {
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent
        Text {
            text: "Click Me"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Ut1.greet()
                Ut1.combineAges(12, 42)
            }
        }
    }
}
