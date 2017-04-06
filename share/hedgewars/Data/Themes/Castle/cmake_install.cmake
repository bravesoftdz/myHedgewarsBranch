# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle

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
   "/home/tomek/games/Data/Themes/Castle/theme.cfg;/home/tomek/games/Data/Themes/Castle/BlueWater.png;/home/tomek/games/Data/Themes/Castle/SkyR.png;/home/tomek/games/Data/Themes/Castle/horizont.png;/home/tomek/games/Data/Themes/Castle/Spear.png;/home/tomek/games/Data/Themes/Castle/Shield.png;/home/tomek/games/Data/Themes/Castle/Flake.png;/home/tomek/games/Data/Themes/Castle/LandBackTex.png;/home/tomek/games/Data/Themes/Castle/icon.png;/home/tomek/games/Data/Themes/Castle/SkyL.png;/home/tomek/games/Data/Themes/Castle/Sword.png;/home/tomek/games/Data/Themes/Castle/Border.png;/home/tomek/games/Data/Themes/Castle/Chunk.png;/home/tomek/games/Data/Themes/Castle/Axe.png;/home/tomek/games/Data/Themes/Castle/Sky.png;/home/tomek/games/Data/Themes/Castle/LandTex.png;/home/tomek/games/Data/Themes/Castle/Clouds.png;/home/tomek/games/Data/Themes/Castle/Droplet.png;/home/tomek/games/Data/Themes/Castle/Girder.png;/home/tomek/games/Data/Themes/Castle/Splash.png;/home/tomek/games/Data/Themes/Castle/icon@2x.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Themes/Castle" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/theme.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/BlueWater.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/SkyR.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/horizont.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Spear.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Shield.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Flake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/LandBackTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/icon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/SkyL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Sword.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Border.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Chunk.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Axe.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Sky.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/LandTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Clouds.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Droplet.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Girder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/Splash.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/icon@2x.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

