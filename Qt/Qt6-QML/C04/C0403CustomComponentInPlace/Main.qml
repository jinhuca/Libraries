/*
    Working with custom components, without external files.
    we set up the components where they are used (in the main.qml file)
        . Method 1: Use the Component together with Loader
        . Method 2: Show inlined components as in component MButton: Rectangle
  */
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components in Place")

    // Method 1
    /*
    Row {
        spacing: 20
        Loader {
            id: firstButton
            sourceComponent: buttonComponent
            onLoaded: {
                var customButton = firstButton.item     // Retrieve the loaded item
                // Access the loaded component's properties and signals
                customButton.buttonText = "Button1"
                customButton.buttonClicked.connect(function() {
                    console.log("Clicked on Button1")
                })
            }
        }
        Loader {
            id: secondButton
            sourceComponent: buttonComponent
            onLoaded: {
                var customButton = secondButton.item     // Retrieve the loaded item
                // Access the loaded component's properties and signals
                customButton.buttonText = "Button2"
                customButton.buttonClicked.connect(function() {
                    console.log("Clicked on Button2")
                })
            }
        }
    }

    Component {
        id: buttonComponent
        Item {
            id: rootId

            width: containerRectId.width
            height: containerRectId.height

            property alias buttonText: buttonTextId.text
            signal buttonClicked

            Rectangle {
                id: containerRectId
                color: "red"
                width: buttonTextId.implicitWidth + 10
                height: buttonTextId.implicitHeight + 10
                border {
                    color: "blue"
                    width: 3
                }

                Text {
                    id: buttonTextId
                    text: qsTr("Button")
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
    }
    */

    // Method 2
    component MButton : Rectangle {
        id: mButtonId
        property alias buttonText: buttonTextId.text
        signal buttonClicked
        width: buttonTextId.width + 20
        height: buttonTextId.height + 20
        color: "red"
        border {
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
            text: qsTr("Button")
            anchors.centerIn: parent
            onTextChanged: {
                console.log("Text changed to " + buttonTextId.text)
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mButtonId.buttonClicked()  // Emit your signal
            }
        }
    }

    Column {
        spacing: 20
        MButton {
            buttonText: "Button3"
            onButtonClicked: {
                console.log("Clicked on inlined component button3")
            }
        }
        MButton {
            buttonText: "Button4"
            onButtonClicked: {
                console.log("Clicked on inlined component button4")
            }
        }
    }
}
