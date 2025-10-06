import QtQuick

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Multiple Signal Params")

  signal info(string f, string l, int a);

  onInfo: function(f, l, a) {
    print("last name: " + l + ", first name: " + f + ", age: "+a);
  }

  Rectangle{
    width: 300
    height: 300
    color: "lightblue"
    MouseArea {
      anchors.fill: parent
      onClicked: {
        info("John", "Doe", 33)
      }
    }
  }
}
