# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate

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
   "/home/tomek/games/Data/Sounds/voices/Pirate/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Justyouwait.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Melon.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Pirate/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Pirate" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Justyouwait.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Pirate/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

