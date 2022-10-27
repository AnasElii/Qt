cmake_minimum_required(VERSION 3.21)
project(CustomWidget VERSION 1.0.0 LANGUAGES CXX)

#======================= INCLUSION OF Qt =======================#
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_CXX_Standard 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Widgets REQUIRED)

#=================== INCLUSION OF Project Files ====================#
set(${SOURCE_DIR} "${CMAKE_SOURCE_DIR}/src")
set(${INCLUDE_DIR} "${CMAKE_SOURCE_DIR}/headers")
set(${FORMS_DIR} "${CMAKE_SOURCE_DIR}/ui")

include_directories(${SOURCE_DIR})
include_directories(${INCLUDE_DIR})
include_directories(${FORMS_DIR})

file(GLOB_RECURSE SOURCES
    "${FORMS_DIR}/*.ui"
    "${FORMS_DIR}/*.qrc"
    "${INCLUDE_DIR}/*.h"
    "${SOURCE_DIR}/*.cpp"
)

# Add the executable
add_executable(CustomWidget 
    ${SOURCES}
)

# Add the target includes for MY_PROJECT 
target_include_directories(CustomWidget PUBLIC ${SOURCE_DIR})
target_include_directories(CustomWidget PUBLIC ${INCLUDE_DIR})
target_include_directories(CustomWidget PUBLIC ${FORMS_DIR})

target_link_libraries(CustomWidget PRIVATE Qt6::Widgets)

set_target_properties(CustomWidget PROPERTIES
    WIN32_EXECUTABLE ON
)
