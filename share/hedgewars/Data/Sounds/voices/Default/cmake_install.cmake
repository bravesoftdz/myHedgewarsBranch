# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default

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
   "/home/tomek/games/Data/Sounds/voices/Default/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Default/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Default/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Default/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Default/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch4.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch5.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch3.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch2.ogg;/home/tomek/games/Data/Sounds/voices/Default/Firepunch6.ogg;/home/tomek/games/Data/Sounds/voices/Default/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Default/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Default/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Default/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Default/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Default/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Default/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Default/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Default/Justyouwait.ogg;/home/tomek/games/Data/Sounds/voices/Default/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Default/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Default/Melon.ogg;/home/tomek/games/Data/Sounds/voices/Default/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Default/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Default/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Default/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Default/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Default/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Default/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Default/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Default/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Default/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Default/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Default/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Default/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Default/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Default/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Default/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Default/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Default" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch5.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Firepunch6.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Justyouwait.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

