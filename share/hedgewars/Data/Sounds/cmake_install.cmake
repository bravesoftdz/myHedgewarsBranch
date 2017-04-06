# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds

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
   "/home/tomek/games/Data/Sounds/steps.ogg;/home/tomek/games/Data/Sounds/3E.ogg;/home/tomek/games/Data/Sounds/explosion.ogg;/home/tomek/games/Data/Sounds/melonimpact.ogg;/home/tomek/games/Data/Sounds/extratime.ogg;/home/tomek/games/Data/Sounds/hell_ow.ogg;/home/tomek/games/Data/Sounds/shutterclick.ogg;/home/tomek/games/Data/Sounds/ride_of_the_valkyries.ogg;/home/tomek/games/Data/Sounds/warp.ogg;/home/tomek/games/Data/Sounds/ropeshot.ogg;/home/tomek/games/Data/Sounds/Droplet1.ogg;/home/tomek/games/Data/Sounds/cake2.ogg;/home/tomek/games/Data/Sounds/minetick.ogg;/home/tomek/games/Data/Sounds/lowgravity.ogg;/home/tomek/games/Data/Sounds/baseballbat.ogg;/home/tomek/games/Data/Sounds/placed.ogg;/home/tomek/games/Data/Sounds/beewater.ogg;/home/tomek/games/Data/Sounds/shotgunfire.ogg;/home/tomek/games/Data/Sounds/parachute.ogg;/home/tomek/games/Data/Sounds/Whistle.ogg;/home/tomek/games/Data/Sounds/suddendeath.ogg;/home/tomek/games/Data/Sounds/ropeattach.ogg;/home/tomek/games/Data/Sounds/switchhog.ogg;/home/tomek/games/Data/Sounds/rcplane.ogg;/home/tomek/games/Data/Sounds/frozen_hog_impact.ogg;/home/tomek/games/Data/Sounds/hammer.ogg;/home/tomek/games/Data/Sounds/molotov.ogg;/home/tomek/games/Data/Sounds/Droplet3.ogg;/home/tomek/games/Data/Sounds/2D.ogg;/home/tomek/games/Data/Sounds/pickhammer.ogg;/home/tomek/games/Data/Sounds/drillgun.ogg;/home/tomek/games/Data/Sounds/plane.ogg;/home/tomek/games/Data/Sounds/Hellish.ogg;/home/tomek/games/Data/Sounds/splash.ogg;/home/tomek/games/Data/Sounds/mineimpact.ogg;/home/tomek/games/Data/Sounds/graveimpact.ogg;/home/tomek/games/Data/Sounds/hell_growl.ogg;/home/tomek/games/Data/Sounds/TARDIS.ogg;/home/tomek/games/Data/Sounds/airmine_impact.ogg;/home/tomek/games/Data/Sounds/sniperreload.ogg;/home/tomek/games/Data/Sounds/9D.ogg;/home/tomek/games/Data/Sounds/8C.ogg;/home/tomek/games/Data/Sounds/whipcrack.ogg;/home/tomek/games/Data/Sounds/bee.ogg;/home/tomek/games/Data/Sounds/skip.ogg;/home/tomek/games/Data/Sounds/4F.ogg;/home/tomek/games/Data/Sounds/homerun.ogg;/home/tomek/games/Data/Sounds/hell_ugh.ogg;/home/tomek/games/Data/Sounds/mortar.ogg;/home/tomek/games/Data/Sounds/denied.ogg;/home/tomek/games/Data/Sounds/bump.ogg;/home/tomek/games/Data/Sounds/grenadeimpact.ogg;/home/tomek/games/Data/Sounds/1C.ogg;/home/tomek/games/Data/Sounds/shotgunreload.ogg;/home/tomek/games/Data/Sounds/beep.ogg;/home/tomek/games/Data/Sounds/7B.ogg;/home/tomek/games/Data/Sounds/5G.ogg;/home/tomek/games/Data/Sounds/Yoohoo.ogg;/home/tomek/games/Data/Sounds/throwrelease.ogg;/home/tomek/games/Data/Sounds/knife_impact.ogg;/home/tomek/games/Data/Sounds/hogchant3.ogg;/home/tomek/games/Data/Sounds/egg.ogg;/home/tomek/games/Data/Sounds/ice_beam.ogg;/home/tomek/games/Data/Sounds/Droplet2.ogg;/home/tomek/games/Data/Sounds/hell_ooff.ogg;/home/tomek/games/Data/Sounds/gun.ogg;/home/tomek/games/Data/Sounds/throwpowerup.ogg;/home/tomek/games/Data/Sounds/ufo.ogg;/home/tomek/games/Data/Sounds/sinegun.ogg;/home/tomek/games/Data/Sounds/6A.ogg;/home/tomek/games/Data/Sounds/hog_freeze.ogg;/home/tomek/games/Data/Sounds/steam.ogg;/home/tomek/games/Data/Sounds/BirdyLay.ogg;/home/tomek/games/Data/Sounds/roperelease.ogg;/home/tomek/games/Data/Sounds/CollectCrate.ogg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Sounds" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/steps.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/3E.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/explosion.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/melonimpact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/extratime.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hell_ow.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/shutterclick.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/ride_of_the_valkyries.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/warp.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/ropeshot.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Droplet1.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/cake2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/minetick.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/lowgravity.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/baseballbat.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/placed.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/beewater.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/shotgunfire.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/parachute.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Whistle.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/suddendeath.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/ropeattach.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/switchhog.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/rcplane.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/frozen_hog_impact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hammer.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/molotov.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Droplet3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/2D.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/pickhammer.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/drillgun.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/plane.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Hellish.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/splash.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/mineimpact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/graveimpact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hell_growl.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/TARDIS.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/airmine_impact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/sniperreload.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/9D.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/8C.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/whipcrack.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/bee.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/skip.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/4F.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/homerun.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hell_ugh.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/mortar.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/denied.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/bump.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/grenadeimpact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/1C.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/shotgunreload.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/beep.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/7B.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/5G.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Yoohoo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/throwrelease.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/knife_impact.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hogchant3.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/egg.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/ice_beam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/Droplet2.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hell_ooff.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/gun.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/throwpowerup.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/ufo.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/sinegun.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/6A.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/hog_freeze.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/steam.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/BirdyLay.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/roperelease.ogg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/CollectCrate.ogg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Sounds/voices/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

