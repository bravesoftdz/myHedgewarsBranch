# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise

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
   "/home/tomek/games/Data/Themes/EarthRise/theme.cfg;/home/tomek/games/Data/Themes/EarthRise/horizontR.png;/home/tomek/games/Data/Themes/EarthRise/RockShort_mask.png;/home/tomek/games/Data/Themes/EarthRise/horizont.png;/home/tomek/games/Data/Themes/EarthRise/Flake.png;/home/tomek/games/Data/Themes/EarthRise/LandBackTex.png;/home/tomek/games/Data/Themes/EarthRise/icon.png;/home/tomek/games/Data/Themes/EarthRise/SkyL.png;/home/tomek/games/Data/Themes/EarthRise/Border.png;/home/tomek/games/Data/Themes/EarthRise/Chunk.png;/home/tomek/games/Data/Themes/EarthRise/Sky.png;/home/tomek/games/Data/Themes/EarthRise/LandTex.png;/home/tomek/games/Data/Themes/EarthRise/RockShort.png;/home/tomek/games/Data/Themes/EarthRise/horizontL.png;/home/tomek/games/Data/Themes/EarthRise/Rock_mask.png;/home/tomek/games/Data/Themes/EarthRise/icon@2x.png;/home/tomek/games/Data/Themes/EarthRise/Rock.png;/home/tomek/games/Data/Themes/EarthRise/credits.txt")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Themes/EarthRise" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/theme.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/horizontR.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/RockShort_mask.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/horizont.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Flake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/LandBackTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/icon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/SkyL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Border.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Chunk.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Sky.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/LandTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/RockShort.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/horizontL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Rock_mask.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/icon@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/Rock.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/credits.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

