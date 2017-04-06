# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog

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
   "/home/tomek/games/Data/Graphics/Hedgehog/amCluster.png;/home/tomek/games/Data/Graphics/Hedgehog/amShotgun.png;/home/tomek/games/Data/Graphics/Hedgehog/Hurrah.png;/home/tomek/games/Data/Graphics/Hedgehog/amVamp.png;/home/tomek/games/Data/Graphics/Hedgehog/amCheese.png;/home/tomek/games/Data/Graphics/Hedgehog/amAirMine.png;/home/tomek/games/Data/Graphics/Hedgehog/amBaseball.png;/home/tomek/games/Data/Graphics/Hedgehog/Invulnerable.png;/home/tomek/games/Data/Graphics/Hedgehog/amFlamethrower.png;/home/tomek/games/Data/Graphics/Hedgehog/ThoughtEdge.png;/home/tomek/games/Data/Graphics/Hedgehog/amBee.png;/home/tomek/games/Data/Graphics/Hedgehog/SpeechEdge.png;/home/tomek/games/Data/Graphics/Hedgehog/amPortalGun.png;/home/tomek/games/Data/Graphics/Hedgehog/amKamikaze.png;/home/tomek/games/Data/Graphics/Hedgehog/amMortar.png;/home/tomek/games/Data/Graphics/Hedgehog/amGirder.png;/home/tomek/games/Data/Graphics/Hedgehog/amMelon.png;/home/tomek/games/Data/Graphics/Hedgehog/amMolotov.png;/home/tomek/games/Data/Graphics/Hedgehog/amGrenade.png;/home/tomek/games/Data/Graphics/Hedgehog/hh_small.png;/home/tomek/games/Data/Graphics/Hedgehog/amConstruction.png;/home/tomek/games/Data/Graphics/Hedgehog/amRCPlane.png;/home/tomek/games/Data/Graphics/Hedgehog/Kowtow.png;/home/tomek/games/Data/Graphics/Hedgehog/amCake.png;/home/tomek/games/Data/Graphics/Hedgehog/amSnowball.png;/home/tomek/games/Data/Graphics/Hedgehog/amFrozenHog.png;/home/tomek/games/Data/Graphics/Hedgehog/amWhip.png;/home/tomek/games/Data/Graphics/Hedgehog/Wave.png;/home/tomek/games/Data/Graphics/Hedgehog/ShoutCorner.png;/home/tomek/games/Data/Graphics/Hedgehog/amBTorch_i.png;/home/tomek/games/Data/Graphics/Hedgehog/amShotgun_w.png;/home/tomek/games/Data/Graphics/Hedgehog/Shrug.png;/home/tomek/games/Data/Graphics/Hedgehog/ILoveLemonade.png;/home/tomek/games/Data/Graphics/Hedgehog/amSMine.png;/home/tomek/games/Data/Graphics/Hedgehog/amAirAttack.png;/home/tomek/games/Data/Graphics/Hedgehog/amJetpack.png;/home/tomek/games/Data/Graphics/Hedgehog/Juggle.png;/home/tomek/games/Data/Graphics/Hedgehog/Idle.png;/home/tomek/games/Data/Graphics/Hedgehog/SpeechTail.png;/home/tomek/games/Data/Graphics/Hedgehog/ShoutTail.png;/home/tomek/games/Data/Graphics/Hedgehog/amDrill.png;/home/tomek/games/Data/Graphics/Hedgehog/amResurrector.png;/home/tomek/games/Data/Graphics/Hedgehog/ThoughtCorner.png;/home/tomek/games/Data/Graphics/Hedgehog/amHellish.png;/home/tomek/games/Data/Graphics/Hedgehog/amMine.png;/home/tomek/games/Data/Graphics/Hedgehog/amDEagle_w.png;/home/tomek/games/Data/Graphics/Hedgehog/amDEagle.png;/home/tomek/games/Data/Graphics/Hedgehog/amSineGun.png;/home/tomek/games/Data/Graphics/Hedgehog/amBallgun.png;/home/tomek/games/Data/Graphics/Hedgehog/amIceGun.png;/home/tomek/games/Data/Graphics/Hedgehog/amKnife.png;/home/tomek/games/Data/Graphics/Hedgehog/amSniperRifle.png;/home/tomek/games/Data/Graphics/Hedgehog/ShoutEdge.png;/home/tomek/games/Data/Graphics/Hedgehog/Vampiric.png;/home/tomek/games/Data/Graphics/Hedgehog/amCleaver.png;/home/tomek/games/Data/Graphics/Hedgehog/amHammer.png;/home/tomek/games/Data/Graphics/Hedgehog/amBazooka.png;/home/tomek/games/Data/Graphics/Hedgehog/amRope.png;/home/tomek/games/Data/Graphics/Hedgehog/SpeechCorner.png;/home/tomek/games/Data/Graphics/Hedgehog/amDynamite.png;/home/tomek/games/Data/Graphics/Hedgehog/Sad.png;/home/tomek/games/Data/Graphics/Hedgehog/ThoughtTail.png;/home/tomek/games/Data/Graphics/Hedgehog/amSkip.png;/home/tomek/games/Data/Graphics/Hedgehog/amBTorch_w.png;/home/tomek/games/Data/Graphics/Hedgehog/amSeduction.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Graphics/Hedgehog" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amCluster.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amShotgun.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Hurrah.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amVamp.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amCheese.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amAirMine.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBaseball.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Invulnerable.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amFlamethrower.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ThoughtEdge.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBee.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/SpeechEdge.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amPortalGun.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amKamikaze.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amMortar.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amGirder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amMelon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amMolotov.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amGrenade.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/hh_small.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amConstruction.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amRCPlane.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Kowtow.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amCake.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSnowball.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amFrozenHog.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amWhip.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Wave.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ShoutCorner.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBTorch_i.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amShotgun_w.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Shrug.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ILoveLemonade.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSMine.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amAirAttack.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amJetpack.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Juggle.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Idle.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/SpeechTail.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ShoutTail.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amDrill.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amResurrector.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ThoughtCorner.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amHellish.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amMine.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amDEagle_w.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amDEagle.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSineGun.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBallgun.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amIceGun.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amKnife.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSniperRifle.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ShoutEdge.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Vampiric.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amCleaver.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amHammer.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBazooka.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amRope.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/SpeechCorner.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amDynamite.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/Sad.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/ThoughtTail.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSkip.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amBTorch_w.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/amSeduction.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

