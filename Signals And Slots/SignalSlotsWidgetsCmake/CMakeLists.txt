cmake_minimum_required(VERSION 3.21)

project(helloworld VERSION 1.0.0 LANGUAGES CXX)

set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_PREFIX_PATH $ENV{QTMSVCDIR})

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Widgets)

qt_add_executable(helloworld
    main.cpp
    widget.cpp
    widget.h
    widget.ui
)

target_link_libraries(helloworld PRIVATE Qt6::Widgets)