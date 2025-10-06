cmake_minimum_required(VERSION 3.16)

project(C1210EasingCurves VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appC1210EasingCurves
    main.cpp
)

qt_add_qml_module(appC1210EasingCurves
    URI C1210EasingCurves
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES MovingRectangle.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appC1210EasingCurves PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appC1210EasingCurves
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appC1210EasingCurves
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appC1210EasingCurves
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
