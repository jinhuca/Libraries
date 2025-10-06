cmake_minimum_required(VERSION 3.16)

project(C0304Resources VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appC0304Resources
    main.cpp
)

# Method 1.
qt_add_resources(appC0304Resources "qml"
    PREFIX /
    FILES
        images/LearnQt.png)

# qt_add_qml_module(appC0304Resources
#     URI C0304Resources
#     VERSION 1.0
#     QML_FILES
#         Main.qml
# )

# Method 2
qt_add_qml_module(appC0304Resources
    URI C0304Resources
    VERSION 1.0
    QML_FILES
        Main.qml
    # you can also do this instead of qt_add_resources
    RESOURCES
        images/LearnQt.png
    RESOURCE_PREFIX /
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appC0304Resources PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appC0304Resources
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appC0304Resources
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appC0304Resources
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
