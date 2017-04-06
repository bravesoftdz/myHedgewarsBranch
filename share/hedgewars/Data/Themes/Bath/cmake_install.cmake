# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath

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
   "/home/tomek/games/Data/Themes/Bath/theme.cfg;/home/tomek/games/Data/Themes/Bath/Bubble.png;/home/tomek/games/Data/Themes/Bath/horizontR.png;/home/tomek/games/Data/Themes/Bath/horizont.png;/home/tomek/games/Data/Themes/Bath/Flake.png;/home/tomek/games/Data/Themes/Bath/LandBackTex.png;/home/tomek/games/Data/Themes/Bath/icon.png;/home/tomek/games/Data/Themes/Bath/Duck2.png;/home/tomek/games/Data/Themes/Bath/Toothbrush_g.png;/home/tomek/games/Data/Themes/Bath/Border.png;/home/tomek/games/Data/Themes/Bath/Chunk.png;/home/tomek/games/Data/Themes/Bath/Toothbrush.png;/home/tomek/games/Data/Themes/Bath/Sky.png;/home/tomek/games/Data/Themes/Bath/LandTex.png;/home/tomek/games/Data/Themes/Bath/Clouds.png;/home/tomek/games/Data/Themes/Bath/Dust.png;/home/tomek/games/Data/Themes/Bath/Toothbrush_b.png;/home/tomek/games/Data/Themes/Bath/Girder.png;/home/tomek/games/Data/Themes/Bath/horizontL.png;/home/tomek/games/Data/Themes/Bath/Duck.png;/home/tomek/games/Data/Themes/Bath/icon@2x.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Themes/Bath" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/theme.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Bubble.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/horizontR.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/horizont.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Flake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/LandBackTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/icon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Duck2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Toothbrush_g.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Border.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Chunk.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Toothbrush.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Sky.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/LandTex.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Clouds.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Dust.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Toothbrush_b.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Girder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/horizontL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/Duck.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/icon@2x.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

