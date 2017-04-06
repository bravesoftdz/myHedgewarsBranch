# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training

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
   "/home/tomek/games/Data/Missions/Training/Target_Practice_-_Grenade_hard.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Spooky_Tree.lua;/home/tomek/games/Data/Missions/Training/portal.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Bamboo_Thicket.lua;/home/tomek/games/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_Hedgelove.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_RCPlane_Challenge.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Grenade_easy.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Cluster_Bomb.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Teamwork.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Shotgun.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_That_Sinking_Feeling.lua;/home/tomek/games/Data/Missions/Training/Basic_Training_-_Sniper_Rifle.lua;/home/tomek/games/Data/Missions/Training/Basic_Training_-_Rope.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_The_Great_Escape.lua;/home/tomek/games/Data/Missions/Training/ClimbHome.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Bazooka_hard.lua;/home/tomek/games/Data/Missions/Training/Basic_Training_-_Bazooka.lua;/home/tomek/games/Data/Missions/Training/Basic_Training_-_Grenade.lua;/home/tomek/games/Data/Missions/Training/Basic_Training_-_Flying_Saucer.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Homing_Bee.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Dangerous_Ducklings.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Diver.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Rope_Knock_Challenge.lua;/home/tomek/games/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_ShoppaKing.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Nobody_Laugh.lua;/home/tomek/games/Data/Missions/Training/Target_Practice_-_Bazooka_easy.lua;/home/tomek/games/Data/Missions/Training/User_Mission_-_Newton_and_the_Hammock.lua;/home/tomek/games/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_Ropes.lua")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Missions/Training" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Grenade_hard.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Spooky_Tree.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/portal.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Bamboo_Thicket.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_Hedgelove.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_RCPlane_Challenge.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Grenade_easy.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Cluster_Bomb.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Teamwork.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Shotgun.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_That_Sinking_Feeling.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Basic_Training_-_Sniper_Rifle.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Basic_Training_-_Rope.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_The_Great_Escape.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/ClimbHome.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Bazooka_hard.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Basic_Training_-_Bazooka.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Basic_Training_-_Grenade.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Basic_Training_-_Flying_Saucer.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Homing_Bee.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Dangerous_Ducklings.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Diver.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Rope_Knock_Challenge.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_ShoppaKing.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Nobody_Laugh.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Target_Practice_-_Bazooka_easy.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/User_Mission_-_Newton_and_the_Hammock.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Missions/Training/Challenge_-_Speed_Shoppa_-_Ropes.lua"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

