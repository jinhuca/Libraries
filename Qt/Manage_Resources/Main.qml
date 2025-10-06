import QtQuick

import Bsc_Ui_Styles 1.0 as BscStyles



Window {
  width: 1920
  height: 1000
  visible: true
  title: qsTr("Colors")

  Column {
    spacing: 10
    anchors.centerIn: parent

    Rectangle {
      width: parent.width
      height: 50
      color: "black"
      Text {
        text: "Color Styles"
        font.weight: Font.Normal
        font.pixelSize: 30
        color: "white"
        anchors.centerIn: parent
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Brand blue"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        // border {
        //   width: 1
        //   color: "Black"
        // }
        color: BscStyles.SolidColors.brandBlue025
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              id: name
              font.pixelSize: 13
              font.bold: true
              text: qsTr("025")
            }
            Text {
              id: valueOfColor
              font.pixelSize: 13
              text: qsTr("#EDF2FA")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        // border {
        //   width: 1
        //   color: "Black"
        // }
        color: BscStyles.SolidColors.brandBlue050
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("050")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#CEDBED")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        // border {
        //   width: 1
        //   color: "Black"
        // }
        color: BscStyles.SolidColors.brandBlue100
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("100")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#A5BFE5")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue200
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("200")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#799ED2")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue300
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("300")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#4B78B9")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#375F9A")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#2D4B77")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue600
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#264066")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue700
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("700")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#203554")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue800
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#132541")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue900
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("900")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#101B2B")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brandBlue950
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("950")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#090F19")
            }
          }
        }
      }

      Rectangle {
        width: 20
        height: 73
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.brandBlue400BrandBlue500
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Brand-b 400  Brand-b 500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (35%) - Stop (100%)")
            }
          }
        }
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.brandBlue500BrandBlue800
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Brand-b 500  Brand-b 800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (35%) - Stop (100%)")
            }
          }
        }
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.brandBlue600BrandBlue800
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Brand-b 600  Brand-b 800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (0%) - Stop (70%)")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Yellow"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow025
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("025")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FEF7EB")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow050
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("050")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FEF0D7")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow100
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("100")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FDE4B9")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow200
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("200")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FCD592")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow300
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("300")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FBC260")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FFB433")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FFA100")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow600
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#DA8E0B")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow700
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("700")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#AA6E09")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow800
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#6C4B13")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow900
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("900")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#392B13")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.yellow950
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("950")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#261D0D")
            }
          }
        }
      }
      Rectangle {
        width: 20
        height: 73
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.yellow400Yellow600
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("yellow 400  yellow 600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (0%) - Stop (100%)")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Bright blue"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue025
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("025")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#E5F0FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue050
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("050")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#D6E7FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue100
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("100")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#B2D2FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue200
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("200")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#8EBCFF")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue300
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("300")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#6AA3FB")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#4789EB")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#2E71D3")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue600
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#2459A8")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue700
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("700")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#134186")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue800
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#012965")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue900
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("900")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#011D47")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.brightBlue950
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("950")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#000E24")
            }
          }
        }
      }
      Rectangle {
        width: 20
        height: 73
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.brightBlue300BrightBlue500
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Bright-b 300  Bright-b 500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (0%) - Stop (100%)")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Gray blue"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue025
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("025")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#D9E5F2")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue050
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("050")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#B7CDE6")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue100
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("100")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#94B5DA")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue200
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("200")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#729DCF")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue300
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("300")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#5291B6")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#3F6897")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#385C85")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue600
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#304F73")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue700
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("700")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#244160")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue800
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#1C334D")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue900
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("900")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#14263A")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.grayBlue950
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("950")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#0D1926")
            }
          }
        }
      }
      Rectangle {
        width: 20
        height: 73
      }
      Rectangle {
        width: 180
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        gradient: BscStyles.GradientColors.grayB300GrayB400
        Rectangle {
          width: 179
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Bright-b 300  Bright-b 400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("Stop (0%) - Stop (100%)")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Gray"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray025
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("025")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#F9FAFB")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray050
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("050")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#F1F2F4")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray100
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("100")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#E2E4E9")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray200
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("200")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#CED3D9")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray300
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("300")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#B3B8C1")
            }
          }
        }
      }

      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#989EAB")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#7B8493")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray600
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("600")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#636B79")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray700
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("700")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#4C535D")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray800
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("800")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#353941")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray900
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("900")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#25282D")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.gray950
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("950")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#17191C")
            }
          }
        }
      }

    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Neutrals"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.white
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("White")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FFFFFF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.black
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Black")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#000000")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Success"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.success500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#34B71A")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Warning"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.warning500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FFCE48")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "System error"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.systemError500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FF6038")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Error-\nSystem fault"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.error400
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("400")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FF6B6B")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.error500
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("500")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FF0429")
            }
          }
        }
      }
    }

    Row {
      spacing: 3
      leftPadding: 10
      Rectangle {
        width: 80
        height: 73
        Text {
          anchors.centerIn: parent
          text: "Contact\nSensing\nSplines"
          font.bold: true
          font.pixelSize: 16
        }
      }
      Rectangle {
        width: 40
        height: 73
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineA
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline A")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#F03D29")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineB
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline B")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#FFF100")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineC
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline C")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#00E7FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineDMain
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline D - main")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#0066FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineDLight
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline D - light")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#4A92FF")
            }
          }
        }
      }
      Rectangle {
        width: 80
        height: 73
        topLeftRadius: 10
        topRightRadius: 10
        color: BscStyles.SolidColors.splineE
        Rectangle {
          width: 79
          height: 38
          color: "white"
          anchors.bottom: parent.bottom
          Column {
            Text {
              font.pixelSize: 13
              font.bold: true
              text: qsTr("Spline E")
            }
            Text {
              font.pixelSize: 13
              text: qsTr("#00E7FF")
            }
          }
        }
      }
    }
    Rectangle {
      implicitWidth: flexId.width
      implicitHeight: flexId.height
      color: "black"
      Image {
        id: flexId
        width: 50
        height: 50
        anchors.centerIn: parent
        source: BscStyles.Icons.flower
        // source: BscStyles.SolidColors.imagePath1 //"/Bsc_Ui_Styles/images/icon_flex.svg"
      }
    }
  }
}
