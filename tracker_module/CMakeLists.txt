cmake_minimum_required(VERSION 3.23)

set(CMAKE_AUTORCC ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Qml Sql)

set(QML_IMPORT_PATH ${QT_QML_OUTPUT_DIRECTORY}
    CACHE STRING "Qt Creator tournament tracker module import path"
    FORCE
)

qt_add_library(tracker_module STATIC)
qt6_add_qml_module(tracker_module
    URI "tracker"
    VERSION 1.0
    PLUGIN_TARGET trackerplugin
    SOURCES
        TeamDTO.h
        PersonDTO.h
        TournamentDTO.h
        PrizeDTO.h
        MatchupDTO.h
        MatchupEntryDTO.h
        trackerdatabase.h
        trackerdatabase.cpp
        trackersqlconnector.h
        trackersqlconnector.cpp
    RESOURCES
        tracker_resources.qrc
)


target_include_directories(tracker_module
    PUBLIC "{CMAKE_CURRENT_SOURCE_DIR}/../"
    PRIVATE "{CMAKE_CURRENT_SOURCE_DIR}"
)

target_link_libraries(tracker_module
    PRIVATE Qt6::Core
    PRIVATE Qt6::Qml
    PRIVATE Qt6::Sql
)
