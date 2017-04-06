# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru

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
   "/home/tomek/games/Data/Sounds/voices/Default_ru/Boring.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Byebye.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Comeonthen.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Coward.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Enemydown.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firstblood.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch4.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch5.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch1.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch3.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch2.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Firepunch6.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Flawless.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Hello.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Hurry.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Illgetyou.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Incoming.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Jump3.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Jump2.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Jump1.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Justyouwait.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Kamikaze.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Laugh.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Melon.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Missed.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Nooo.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Nutter.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ooff2.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ooff1.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ooff3.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Oops.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ow1.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ow3.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ow2.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Ow4.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/PoisonCough.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/PoisonMoan.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Reinforcements.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Sameteam.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Stupid.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Takecover.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Traitor.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Uh-oh.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Victory.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Watchit.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Yessir.ogg;/home/tomek/games/Data/Sounds/voices/Default_ru/Youllregretthat.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds/voices/Default_ru" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Boring.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Byebye.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Comeonthen.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Coward.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Enemydown.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firstblood.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch5.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Firepunch6.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Flawless.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Hello.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Hurry.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Illgetyou.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Incoming.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Jump3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Jump2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Jump1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Justyouwait.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Kamikaze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Laugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Melon.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Missed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Nooo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Nutter.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ooff2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ooff1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ooff3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Oops.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ow1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ow3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ow2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Ow4.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/PoisonCough.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/PoisonMoan.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Reinforcements.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Sameteam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Stupid.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Takecover.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Traitor.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Uh-oh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Victory.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Watchit.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Yessir.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/Default_ru/Youllregretthat.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

