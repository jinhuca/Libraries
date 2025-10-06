import QtQuick
import GreatButtons

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Modules - CMake")

    Column {
        spacing: 20
        Text {
            id: txtId
            // color: color1
            text: "My color"
        }

        GrayButton {
            buttonText: "Button1"
            onButtonClicked: {
                console.log("Clicked on button1")
            }
        }
        GreenButton {
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on button2")
            }
        }
        YellowButton {
            buttonText: "Button3"
            onButtonClicked: {
                console.log("Clicked on button3")
            }
        }
        RedButton {
            buttonText: "Button4"
            onButtonClicked: {
                console.log("Clicked on button4")
            }
        }
    }

}
