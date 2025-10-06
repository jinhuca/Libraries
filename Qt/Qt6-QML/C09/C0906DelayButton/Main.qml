import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ColumnLayout {
        width: parent.width
        spacing: 40
        Label {
            width: parent.width
            wrapMode: Label.Wrap
            Layout.fillWidth: true
            text: "Delayed button."
            font.pointSize: 15
        }
        DelayButton {
            property bool activated: true
            text: "DelayButton"
            Layout.fillWidth: true
            delay: 1000
            onPressed: function() {
                if(activated == true) {
                    console.log("Button is clicked. Carrying out the task")
                    activated = false
                }
            }
            onActivated: function() {
                console.log("Button activated")
                activated = true
            }
            onProgressChanged: function() {
                console.log(progress)
            }
        }
    }

}
