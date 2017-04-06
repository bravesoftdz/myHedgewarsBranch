# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure

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
   "/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/campaign.ini;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit01.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/cosmos.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/ice02.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/ice01.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert03.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/death01.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert02.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/moon02.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/final.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert01.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/moon01.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit02.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit03.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/death02.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/global_functions.lua;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit01.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/death01.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert03.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert01.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/ice01.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/death02.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/ice02.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit02.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/desert02.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/moon02.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/moon01.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/cosmos.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/fruit03.hwp;/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure/final.hwp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Missions/Campaign/A_Space_Adventure" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/campaign.ini"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit01.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/cosmos.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/ice02.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/ice01.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert03.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/death01.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert02.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/moon02.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/final.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert01.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/moon01.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit02.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit03.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/death02.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/global_functions.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit01.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/death01.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert03.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert01.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/ice01.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/death02.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/ice02.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit02.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/desert02.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/moon02.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/moon01.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/cosmos.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/fruit03.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Campaign/A_Space_Adventure/final.hwp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

