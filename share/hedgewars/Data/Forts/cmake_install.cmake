# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts

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
   "/home/tomek/games/Data/Forts/EarthL.png;/home/tomek/games/Data/Forts/TankL.png;/home/tomek/games/Data/Forts/LegoL.png;/home/tomek/games/Data/Forts/SteelTowerL.png;/home/tomek/games/Data/Forts/WoodL.png;/home/tomek/games/Data/Forts/EvilChickenL.png;/home/tomek/games/Data/Forts/StatueL.png;/home/tomek/games/Data/Forts/UFOL.png;/home/tomek/games/Data/Forts/CakeL.png;/home/tomek/games/Data/Forts/PlaneL.png;/home/tomek/games/Data/Forts/FlowerhogL.png;/home/tomek/games/Data/Forts/CastleL.png;/home/tomek/games/Data/Forts/HydrantL.png;/home/tomek/games/Data/Forts/EarthR.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Forts" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/EarthL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/TankL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/LegoL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/SteelTowerL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/WoodL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/EvilChickenL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/StatueL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/UFOL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/CakeL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/PlaneL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/FlowerhogL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/CastleL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/HydrantL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Forts/EarthR.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

