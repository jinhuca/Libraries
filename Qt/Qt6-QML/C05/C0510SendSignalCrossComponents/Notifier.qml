import QtQuick

Item {
  property alias rectColor: notifierRectId.color
  width: notifierRectId.width
  height: notifierRectId.height

  // set up the custom count property
  property int count: 0

  signal notify(string count)

  Rectangle {
    id: notifierRectId
    width: 200
    height: 200
    color: "red"
    Text {
      id: displayTextId
      anchors.centerIn: parent
      font.pointSize: 20
      text: count
    }

    MouseArea {
      anchors.fill: parent
      onClicked: {
        count++;
        notify(count)
      }
    }
  }
}
