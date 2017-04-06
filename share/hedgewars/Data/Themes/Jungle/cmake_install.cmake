# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle

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
   "/home/tomek/games/Data/Themes/Jungle/theme.cfg;/home/tomek/games/Data/Themes/Jungle/BlueWater.png;/home/tomek/games/Data/Themes/Jungle/horizont.png;/home/tomek/games/Data/Themes/Jungle/FlowerRed.png;/home/tomek/games/Data/Themes/Jungle/FernLeft.png;/home/tomek/games/Data/Themes/Jungle/Flake.png;/home/tomek/games/Data/Themes/Jungle/LandBackTex.png;/home/tomek/games/Data/Themes/Jungle/icon.png;/home/tomek/games/Data/Themes/Jungle/SkyL.png;/home/tomek/games/Data/Themes/Jungle/Snake.png;/home/tomek/games/Data/Themes/Jungle/Border.png;/home/tomek/games/Data/Themes/Jungle/Flowers.png;/home/tomek/games/Data/Themes/Jungle/FernRight.png;/home/tomek/games/Data/Themes/Jungle/Sky.png;/home/tomek/games/Data/Themes/Jungle/PalmTree.png;/home/tomek/games/Data/Themes/Jungle/Spider.png;/home/tomek/games/Data/Themes/Jungle/LandTex.png;/home/tomek/games/Data/Themes/Jungle/Clouds.png;/home/tomek/games/Data/Themes/Jungle/FlowerBlue.png;/home/tomek/games/Data/Themes/Jungle/Droplet.png;/home/tomek/games/Data/Themes/Jungle/Monkey.png;/home/tomek/games/Data/Themes/Jungle/Girder.png;/home/tomek/games/Data/Themes/Jungle/Liana.png;/home/tomek/games/Data/Themes/Jungle/Splash.png;/home/tomek/games/Data/Themes/Jungle/icon@2x.png;/home/tomek/games/Data/Themes/Jungle/credits.txt")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Themes/Jungle" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/theme.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/BlueWater.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/horizont.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/FlowerRed.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/FernLeft.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Flake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/LandBackTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/icon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/SkyL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Snake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Border.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Flowers.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/FernRight.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Sky.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/PalmTree.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Spider.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/LandTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Clouds.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/FlowerBlue.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Droplet.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Monkey.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Girder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Liana.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/Splash.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/icon@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/credits.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

