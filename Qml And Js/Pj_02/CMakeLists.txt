cmake_minimum_required(VERSION 3.21)
project(QHelloWorld VERSION 1.0.0 LANGUAGES CXX)


set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")
set(UI_DIR "${CMAKE_SOURCE_DIR}/ui")
set(COMPONENTS_DIR "${CMAKE_SOURCE_DIR}/components")

include_directories(${SOURCE_DIR})
include_directories(${INCLUDE_DIR})
include_directories(${UI_DIR})
include_directories(${COMPONENTS_DIR})

file(GLOB_RECURSE SOURCES
    "${SOURCE_DIR}/*.cpp"
    "${INCLUDE_DIR}/*.h"
)

find_package(Qt6 COMPONENTS Gui Quick REQUIRED)


qt_add_executable(QHelloWorld ${SOURCES})


qt_add_qml_module(QHelloWorld
    URI CustomItems
    VERSION 1.0.0
    QML_FILES
        ui/main.qml
        ui/constants.js
        ui/javascriptFile.js
        components/CustomButton.qml
)

target_link_directories(QHelloWorld PUBLIC ${SOURCE_DIR})
target_link_directories(QHelloWorld PUBLIC ${INCLUDE_DIR})
target_link_directories(QHelloWorld PUBLIC ${UI_DIR})

target_link_libraries(QHelloWorld PRIVATE Qt6::Gui Qt6::Quick)
