cmake_minimum_required(VERSION 3.21)
project(QHelloWorld VERSION 1.0.0)

set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_PREFIX_PATH $ENV{QTANDROIDDIR})

#======================= INCLUSION OF Qt =======================#
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")
set(UI_DIR "${CMAKE_SOURCE_DIR}/ui")


include_directories(${SOURCE_DIR})
include_directories(${INCLUDE_DIR})
include_directories(${UI_DIR})

file(GLOB_RECURSE SOURCES
    "${SOURCE_DIR}/*.cpp"
    "${INCLUDE_DIR}/*.h"
)

find_package(Qt6 COMPONENTS Gui Quick Core REQUIRED)

qt_add_executable(QHelloWorld ${SOURCES})

set_target_properties(QHelloWorld PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

qt_add_qml_module(QHelloWorld
    URI rec
    VERSION 1.0.0
    QML_FILES
        ui/main.qml
        ui/constants.js
        ui/javascriptFile.js
)

qt_android_generate_deployment_settings(QHelloWorld)

target_link_directories(QHelloWorld PUBLIC ${SOURCE_DIR})
target_link_directories(QHelloWorld PUBLIC ${INCLUDE_DIR})
target_link_directories(QHelloWorld PUBLIC ${UI_DR})

target_link_libraries(QHelloWorld PRIVATE Qt6::Gui Qt6::Quick Qt6::Core)


install(TARGETS QHelloWorld
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})