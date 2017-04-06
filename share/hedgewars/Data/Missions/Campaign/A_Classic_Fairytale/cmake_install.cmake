# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/tomek/games")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "DEBUG")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/campaign.ini;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/united.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/journey.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/epil.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/queen.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/enemy.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/dragon.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/family.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/first_blood.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/shadow.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/backstab.lua;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/journey.hwp;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/shadow.hwp;/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale/first_blood.hwp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Missions/Campaign/A_Classic_Fairytale" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/campaign.ini"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/united.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/journey.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/epil.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/queen.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/enemy.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/dragon.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/family.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/first_blood.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/shadow.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/backstab.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/journey.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/shadow.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Classic_Fairytale/first_blood.hwp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

