import QtQuick

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Exercises")

  Rectangle {
    id: root
    width: 400
    height: 400
    color: "grey"
    Rectangle {
      color: "lightblue"
      x: 50
      y: 50
      width: 300
      height: 150
      Rectangle {
        color: "white"
        x: 50; y: 50
        width: 50; height: 50
      }
    }
    Rectangle {
      color: "green"
      x: 50
      y: 150
      width: 300
      height: 150
      clip: true
      Rectangle {
        x: -100; y: 50
        width: 150; height: 50
        color: "blue"
      }
    }
  }
}
