# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly

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
   "/home/tomek/games/Data/Sounds/voices/HillBilly/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Coward.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch4.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch5.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch3.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch2.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Firepunch6.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Hello.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Melon.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Missed.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Oops.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Victory.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/HillBilly/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/HillBilly" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch5.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Firepunch6.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/HillBilly/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

