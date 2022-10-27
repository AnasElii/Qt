cmake_minimum_required(VERSION 3.21)
project(QHelloWorld VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

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

file(GLOB_RECURSE QML_SOURCES
    "${UI_DIR}/*.qml"
)

find_package(Qt6 COMPONENTS Gui Quick REQUIRED)

qt_add_executable(QHelloWorld
    ${SOURCES}
)

qt_add_qml_module(QHelloWOrld
    URI rec
    VERSION 1.0.0
    QML_FILES
        ${QML_SOURCES}    
)

target_link_directories(QHelloWorld PUBLIC ${SOURCE_DIR})
target_link_directories(QHelloWorld PUBLIC ${INCLUDE_DIR})
target_link_directories(QHelloWorld PUBLIC ${UI_DIR})

target_link_libraries(QHelloWOrld PRIVATE Qt6::Gui Qt6::Quick)