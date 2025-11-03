import QtQuick

Window {
  width: 1640
  height: 1280
  visible: true
  title: qsTr("Images")
  Rectangle {
    width: 1200; height: 1200
    // color: "#00a3fc"
    // Image {
    //   x: 150; y: 150
    //   source: "images/rocket.png"
    //   width: sourceSize.width*3
    //   height: sourceSize.height*3
    // }
    Image {
      id: image
      width: 1000; height: 1000
      source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
      fillMode: Image.PreserveAspectFit
      Rectangle {
        color: "red"
        x:0; y:150
        height:50
        width:1000*image.progress
        visible: image.progress !== 1
      }
      onStatusChanged: console.log(sourceSize)
    }
  }
}
