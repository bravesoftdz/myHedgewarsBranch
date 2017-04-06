# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer

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
   "/home/tomek/games/Data/Sounds/voices/Singer/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Justyouwait.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Melon.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Singer/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Singer/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Singer/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Singer" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Justyouwait.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Singer/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

