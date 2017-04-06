# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer

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
   "/home/tomek/games/Data/Scripts/Multiplayer/ShoppaMap.lua;/home/tomek/games/Data/Scripts/Multiplayer/Continental_supplies.lua;/home/tomek/games/Data/Scripts/Multiplayer/HedgeEditor.lua;/home/tomek/games/Data/Scripts/Multiplayer/Random_Weapon.lua;/home/tomek/games/Data/Scripts/Multiplayer/Mutant.lua;/home/tomek/games/Data/Scripts/Multiplayer/WxW.lua;/home/tomek/games/Data/Scripts/Multiplayer/Tumbler.lua;/home/tomek/games/Data/Scripts/Multiplayer/Space_Invasion.lua;/home/tomek/games/Data/Scripts/Multiplayer/No_Jumping.lua;/home/tomek/games/Data/Scripts/Multiplayer/Frenzy.lua;/home/tomek/games/Data/Scripts/Multiplayer/TechRacer.lua;/home/tomek/games/Data/Scripts/Multiplayer/Construction_Mode.lua;/home/tomek/games/Data/Scripts/Multiplayer/Highlander.lua;/home/tomek/games/Data/Scripts/Multiplayer/Gravity.lua;/home/tomek/games/Data/Scripts/Multiplayer/Tunnels.lua;/home/tomek/games/Data/Scripts/Multiplayer/Balanced_Random_Weapon.lua;/home/tomek/games/Data/Scripts/Multiplayer/The_Specialists.lua;/home/tomek/games/Data/Scripts/Multiplayer/DiagonalMaze.lua;/home/tomek/games/Data/Scripts/Multiplayer/Racer.lua;/home/tomek/games/Data/Scripts/Multiplayer/Capture_the_Flag.lua;/home/tomek/games/Data/Scripts/Multiplayer/Continental_supplies.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Frenzy.cfg;/home/tomek/games/Data/Scripts/Multiplayer/The_Specialists.cfg;/home/tomek/games/Data/Scripts/Multiplayer/DiagonalMaze.cfg;/home/tomek/games/Data/Scripts/Multiplayer/No_Jumping.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Space_Invasion.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Gravity.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Tumbler.cfg;/home/tomek/games/Data/Scripts/Multiplayer/ShoppaMap.cfg;/home/tomek/games/Data/Scripts/Multiplayer/HedgeEditor.cfg;/home/tomek/games/Data/Scripts/Multiplayer/WxW.cfg;/home/tomek/games/Data/Scripts/Multiplayer/TechRacer.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Random_Weapon.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Balanced_Random_Weapon.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Racer.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Construction_Mode.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Tunnels.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Highlander.cfg;/home/tomek/games/Data/Scripts/Multiplayer/Capture_the_Flag.cfg;/home/tomek/games/Data/Scripts/Multiplayer/HedgeEditor.hwp;/home/tomek/games/Data/Scripts/Multiplayer/Construction_Mode.hwp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Scripts/Multiplayer" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/ShoppaMap.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Continental_supplies.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/HedgeEditor.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Random_Weapon.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Mutant.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/WxW.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Tumbler.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Space_Invasion.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/No_Jumping.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Frenzy.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/TechRacer.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Construction_Mode.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Highlander.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Gravity.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Tunnels.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Balanced_Random_Weapon.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/The_Specialists.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/DiagonalMaze.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Racer.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Capture_the_Flag.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Continental_supplies.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Frenzy.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/The_Specialists.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/DiagonalMaze.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/No_Jumping.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Space_Invasion.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Gravity.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Tumbler.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/ShoppaMap.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/HedgeEditor.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/WxW.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/TechRacer.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Random_Weapon.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Balanced_Random_Weapon.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Racer.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Construction_Mode.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Tunnels.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Highlander.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Capture_the_Flag.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/HedgeEditor.hwp"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Scripts/Multiplayer/Construction_Mode.hwp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

