cmake_minimum_required(VERSION 3.16)

project(C0704ImportJS VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appC0704ImportJS
    main.cpp
)

qt_add_qml_module(appC0704ImportJS
    URI C0704ImportJS
    VERSION 1.0
    QML_FILES
        Main.qml
        utilities1.js
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appC0704ImportJS PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appC0704ImportJS
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appC0704ImportJS
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appC0704ImportJS
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
