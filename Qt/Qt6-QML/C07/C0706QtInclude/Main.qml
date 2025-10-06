import QtQuick
import "utility1.js" as Utility1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Include")

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
                // console.log("The ages yield: " + Utility1.combineAges(33, 27))
                // value = Utility1.add(33, 27); //Error
                console.log("The ages yield: " + Utility1.combineAges(33, 27))
            }
        }
    }
}
