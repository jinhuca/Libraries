cmake_minimum_required(VERSION 3.16)

project(manage_resources_app VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set( QT_QML_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/qml )
set( QML_IMPORT_PATH ${QT_QML_OUTPUT_DIRECTORY} CACHE PATH "Extra QML import paths for Qt Creator's code model" )

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appmanage_resources_app
    main.cpp
)

qt_add_qml_module(appmanage_resources_app
    URI manage_resources_app
    VERSION 1.0
    QML_FILES
        Main.qml
)

add_subdirectory(Bsc_Ui_Styles)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmanage_resources_app PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmanage_resources_app
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmanage_resources_app
    PRIVATE Qt6::Quick Bsc_Ui_StylesLibplugin
)

include(GNUInstallDirs)
install(TARGETS appmanage_resources_app
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
