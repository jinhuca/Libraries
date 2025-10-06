pragma Singleton
import QtQuick

QtObject {
  readonly property Gradient brandBlue400BrandBlue500: Gradient {
    GradientStop {
      position: 0.35
      color: SolidColors.brandBlue400
    }
    GradientStop {
      position: 1
      color: SolidColors.brandBlue500
    }
  }
  readonly property Gradient brandBlue500BrandBlue800: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.brandBlue500
    }
    GradientStop {
      position: 1
      color: SolidColors.brandBlue800
    }
  }
  readonly property Gradient brandBlue600BrandBlue800: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.brandBlue600
    }
    GradientStop {
      position: 1
      color: SolidColors.brandBlue800
    }
  }
  readonly property Gradient yellow400Yellow600: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.yellow400
    }
    GradientStop {
      position: 1
      color: SolidColors.yellow600
    }
  }
  readonly property Gradient brightBlue300BrightBlue500: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.brightBlue300
    }
    GradientStop {
      position: 1
      color: SolidColors.brightBlue500
    }
  }
  readonly property Gradient gray100Gray300: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.gray100
    }
    GradientStop {
      position: 1
      color: SolidColors.gray300
    }
  }

  readonly property Gradient grayB300GrayB400: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.grayBlue300
    }
    GradientStop {
      position: 1
      color: SolidColors.grayBlue400
    }
  }

  readonly property Gradient grayBlue300GrayBlue400: Gradient {
    GradientStop {
      position: 0
      color: SolidColors.grayBlue300
    }
    GradientStop {
      position: 1
      color: SolidColors.grayBlue400
    }
  }

  function flatColorGradient(color: color): Gradient {
    var result = Internal.StaticObjects.solidColorGradientDelegate.createObject(null)
    result.color = color
    return result
  }
}
