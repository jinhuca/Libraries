import QtQuick
import "utility1.mjs" as Ut1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript Modules")

    Rectangle{
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent
        Text {
            text: "Click Me"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: function(){

                //Calling a properly exported method
                console.log("The ages yield: " + Ut1.combineAges(33,17))

                //Call method that is not properly exported
                //console.log("The difference : " + Ut1.ageDiff(33,17))

                //Just because add is usable from Ut1.mjs doesn't mean main.qml
                // can use it. Ut2.mjs doesn't export it.
                console.log ("The sum is: " + Ut1.add(33,17))//Error
            }
        }
    }
}
