import QtQuick

Item {
  id: propertyID
  width: 400
  height: 200

  TextInput {
    id: textElement
    x: 50; y: 25
    text: "Qt Quick"
    font.family: "Helvetica"
    font.pixelSize: 50
  }

  Rectangle {
    x: 50
    y: 75
    width: textElement.width
    height: 5
    color: "green"
  }
}
