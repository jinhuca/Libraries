import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("C0206 Property Change Handlers")

    property string name: "Steve"
    onNameChanged: {
        console.log("Name changed to: " + name)
    }

    onTitleChanged: {
        console.log("Title changed to: " + title)
    }

    Rectangle {
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rootId.name = "Morion"
                rootId.title = "New Title"
            }
        }
    }

    Component.onCompleted: {
        console.log("Before any change - Name: " + name)
    }
}
