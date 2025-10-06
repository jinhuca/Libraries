set(MODULE_NAME Bsc_Ui_Styles)
set(LIB_NAME ${MODULE_NAME}Lib)

qt_add_library(${LIB_NAME} STATIC)
find_package(Qt6 REQUIRED COMPONENTS Qml)

set_source_files_properties(colors/SolidColors.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)
set_source_files_properties(colors/GradientColors.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)
set_source_files_properties(images/Icons.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)
set_source_files_properties(fonts/fonts.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

set(CMAKE_AUTORCC ON)
set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)

# qt_add_resources(
#   PREFIX "/"
#   FILES
#     )

qt_add_qml_module(${LIB_NAME}
  URI ${MODULE_NAME}
  VERSION 1.0
  RESOURCE_PREFIX /
  QML_FILES
  SOURCES
    utilities.h
    utilities.cpp
  QML_FILES
    colors/GradientColors.qml
    colors/SolidColors.qml
    images/Icons.qml
    fonts/Fonts.qml
  # RESOURCES Resources.qrc
  RESOURCES images/icon-basket.svg images/icon_flex.svg images/icon_flower.svg images/icon_tip.svg
  fonts/urbanist/Urbanist-Italic-VariableFont_wght.ttf
  fonts/urbanist/Urbanist-VariableFont_wght.ttf
  RESOURCES fonts/consolas/consola.ttf fonts/consolas/consolab.ttf fonts/consolas/consolai.ttf fonts/consolas/consolaz.ttf
  RESOURCES fonts/verdana/verdana.ttf fonts/verdana/verdanab.ttf fonts/verdana/verdanai.ttf fonts/verdana/verdanaz.ttf
)
