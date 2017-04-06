# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk

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
   "/home/tomek/games/Data/Sounds/voices/Default_uk/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch4.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch5.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch3.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch2.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Firepunch6.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Justyouwait.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Melon.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Default_uk/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Default_uk" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch5.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Firepunch6.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Justyouwait.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_uk/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

