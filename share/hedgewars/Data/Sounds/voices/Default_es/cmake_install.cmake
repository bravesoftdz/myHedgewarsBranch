# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es

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
   "/home/tomek/games/Data/Sounds/voices/Default_es/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Default_es/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Default_es" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_es/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

