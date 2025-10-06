/*
  Loading resources through the CMake API:
    Method 1: Explicitly qt_add_resource combined with qt_add_qml_module in CMakeLists.txt.
        . Loading the resource:
            .source: "qrc:/images/LearnQt.png"
    Method 2: Solely relying on qt_add_qml_module in CMakeLists.txt
        .Loading the resource:
            .source: "images/LearnQt.png"
  */
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loading Images through Qt6 CMake facilities")

    Item {
        id: containerItemId
        x: 150
        y: 50
        width: 400
        height: 300

        Rectangle {
            color: "gray"
            anchors.fill: parent
        }

        Image {
            x: 10
            y: 50
            width: 100
            height: 100
            // Method 1: Loading image from qt_add_resource in the CMakeLists.txt file
            source: "qrc:/images/LearnQt.png"
        }

        Image {
            x: 150
            y: 50
            width: 100
            height: 100
            // Method 2: Loading image through qt_add_qml_module in the CMakeLists.txt file
            source: "images/LearnQt.png"
        }

    }
}
