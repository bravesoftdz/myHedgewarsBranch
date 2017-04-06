# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training

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
   "/home/tomek/games/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_Hedgelove@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Bamboo_Thicket@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Bazooka@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Nobody_Laugh@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Teamwork@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/portal@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Dangerous_Ducklings@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Grenade_easy@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Grenade_hard@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Cluster_Bomb@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_ShoppaKing@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Homing_Bee@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Shotgun@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Cluster_Bomb@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Shotgun@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_RCPlane_Challenge@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Flying_Saucer@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Diver@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Bazooka_easy@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Sniper_Rifle@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_Ropes@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Newton_and_the_Hammock@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/ClimbHome@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Rope_Knock_Challenge@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Grenade@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_Spooky_Tree@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Basic_Training_-_Rope@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_That_Sinking_Feeling@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/User_Mission_-_The_Great_Escape@2x.png;/home/tomek/games/Data/Graphics/Missions/Training/Target_Practice_-_Bazooka_hard@2x.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Graphics/Missions/Training" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_Hedgelove@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Bamboo_Thicket@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Bazooka@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Nobody_Laugh@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Teamwork@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/portal@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Dangerous_Ducklings@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Grenade_easy@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Grenade_hard@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Cluster_Bomb@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_ShoppaKing@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Homing_Bee@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Shotgun@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Cluster_Bomb@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Shotgun@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_RCPlane_Challenge@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Flying_Saucer@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Diver@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Bazooka_easy@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Sniper_Rifle@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Challenge_-_Speed_Shoppa_-_Ropes@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Newton_and_the_Hammock@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/ClimbHome@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Rope_Knock_Challenge@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Grenade@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_Spooky_Tree@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Basic_Training_-_Rope@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_That_Sinking_Feeling@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/User_Mission_-_The_Great_Escape@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/Training/Target_Practice_-_Bazooka_hard@2x.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

