import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("C0402 Custom Components")

    Column {
        MButton {
            id: buttonId1
            buttonText: "Button1"
            width: 200
            height: 100
            onButtonClicked: {
                console.log("Clicked on button 1")
            }
        }

        MButton {
            id: buttonid2
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on button 2")
            }
        }

    }

}
