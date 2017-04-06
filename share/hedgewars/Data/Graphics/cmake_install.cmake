# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics

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
   "/home/tomek/games/Data/Graphics/BlueWater.png;/home/tomek/games/Data/Graphics/Case.png;/home/tomek/games/Data/Graphics/slider.png;/home/tomek/games/Data/Graphics/Drill.png;/home/tomek/games/Data/Graphics/Expl50.png;/home/tomek/games/Data/Graphics/Cross.png;/home/tomek/games/Data/Graphics/star.png;/home/tomek/games/Data/Graphics/SmokeTrace.png;/home/tomek/games/Data/Graphics/amRubber.png;/home/tomek/games/Data/Graphics/WindBar.png;/home/tomek/games/Data/Graphics/HHDeath.png;/home/tomek/games/Data/Graphics/Switch.png;/home/tomek/games/Data/Graphics/custom1.png;/home/tomek/games/Data/Graphics/Power.png;/home/tomek/games/Data/Graphics/icetexture.png;/home/tomek/games/Data/Graphics/Snow.png;/home/tomek/games/Data/Graphics/Parachute.png;/home/tomek/games/Data/Graphics/Mortar.png;/home/tomek/games/Data/Graphics/amGirder.png;/home/tomek/games/Data/Graphics/Seduction.png;/home/tomek/games/Data/Graphics/AirDrill.png;/home/tomek/games/Data/Graphics/Bee.png;/home/tomek/games/Data/Graphics/botlevels.png;/home/tomek/games/Data/Graphics/PowerBar.png;/home/tomek/games/Data/Graphics/knife.png;/home/tomek/games/Data/Graphics/Feather.png;/home/tomek/games/Data/Graphics/amTeleport.png;/home/tomek/games/Data/Graphics/SmokeWhite.png;/home/tomek/games/Data/Graphics/Cake_down.png;/home/tomek/games/Data/Graphics/Targetp@2x.png;/home/tomek/games/Data/Graphics/cheese.png;/home/tomek/games/Data/Graphics/RopeNode.png;/home/tomek/games/Data/Graphics/thinking.png;/home/tomek/games/Data/Graphics/Birdy.png;/home/tomek/games/Data/Graphics/MineOff.png;/home/tomek/games/Data/Graphics/Timebox.png;/home/tomek/games/Data/Graphics/SmokeRing.png;/home/tomek/games/Data/Graphics/TargetBee@2x.png;/home/tomek/games/Data/Graphics/boing.png;/home/tomek/games/Data/Graphics/SnowDust.png;/home/tomek/games/Data/Graphics/BigDigits.png;/home/tomek/games/Data/Graphics/Arrow.png;/home/tomek/games/Data/Graphics/AirBomb.png;/home/tomek/games/Data/Graphics/Flame.png;/home/tomek/games/Data/Graphics/RopeHook.png;/home/tomek/games/Data/Graphics/Censored.png;/home/tomek/games/Data/Graphics/Piano.png;/home/tomek/games/Data/Graphics/Note.png;/home/tomek/games/Data/Graphics/HellishBomb@2x.png;/home/tomek/games/Data/Graphics/ExplosivesRoll.png;/home/tomek/games/Data/Graphics/hhMask.png;/home/tomek/games/Data/Graphics/BulletHit.png;/home/tomek/games/Data/Graphics/Hammer.png;/home/tomek/games/Data/Graphics/Finger.png;/home/tomek/games/Data/Graphics/WindR.png;/home/tomek/games/Data/Graphics/Cake_walk.png;/home/tomek/games/Data/Graphics/missions.png;/home/tomek/games/Data/Graphics/AirMine.png;/home/tomek/games/Data/Graphics/RCPlane.png;/home/tomek/games/Data/Graphics/ExplPart.png;/home/tomek/games/Data/Graphics/Teleport.png;/home/tomek/games/Data/Graphics/cleaver.png;/home/tomek/games/Data/Graphics/HellishBomb.png;/home/tomek/games/Data/Graphics/NapalmBomb.png;/home/tomek/games/Data/Graphics/Target.png;/home/tomek/games/Data/Graphics/BeeTrace.png;/home/tomek/games/Data/Graphics/MineOn.png;/home/tomek/games/Data/Graphics/ExplPart2.png;/home/tomek/games/Data/Graphics/Egg.png;/home/tomek/games/Data/Graphics/SMineOn.png;/home/tomek/games/Data/Graphics/Lag.png;/home/tomek/games/Data/Graphics/Explosives.png;/home/tomek/games/Data/Graphics/LandIce.png;/home/tomek/games/Data/Graphics/SMineOff.png;/home/tomek/games/Data/Graphics/amAirplane.png;/home/tomek/games/Data/Graphics/Frame.png;/home/tomek/games/Data/Graphics/Snowball.png;/home/tomek/games/Data/Graphics/Clouds.png;/home/tomek/games/Data/Graphics/Egg@2x.png;/home/tomek/games/Data/Graphics/Dust.png;/home/tomek/games/Data/Graphics/Droplet.png;/home/tomek/games/Data/Graphics/BazookaShell.png;/home/tomek/games/Data/Graphics/BigExplosion.png;/home/tomek/games/Data/Graphics/Molotov.png;/home/tomek/games/Data/Graphics/ClParticle.png;/home/tomek/games/Data/Graphics/Girder.png;/home/tomek/games/Data/Graphics/Shells.png;/home/tomek/games/Data/Graphics/ClBomb.png;/home/tomek/games/Data/Graphics/HHDress.png;/home/tomek/games/Data/Graphics/dynamite.png;/home/tomek/games/Data/Graphics/Targetp.png;/home/tomek/games/Data/Graphics/Crosshair.png;/home/tomek/games/Data/Graphics/custom2.png;/home/tomek/games/Data/Graphics/Airplane.png;/home/tomek/games/Data/Graphics/WindL.png;/home/tomek/games/Data/Graphics/Watermelon.png;/home/tomek/games/Data/Graphics/Smoke.png;/home/tomek/games/Data/Graphics/Progress.png;/home/tomek/games/Data/Graphics/hwengine.png;/home/tomek/games/Data/Graphics/TargetBee.png;/home/tomek/games/Data/Graphics/Balls.png;/home/tomek/games/Data/Graphics/Health.png;/home/tomek/games/Data/Graphics/Hedgehog.png;/home/tomek/games/Data/Graphics/Bomb.png;/home/tomek/games/Data/Graphics/Splash.png;/home/tomek/games/Data/Graphics/Seduction@2x.png;/home/tomek/games/Data/Graphics/FirstAid.png;/home/tomek/games/Data/Graphics/Bubbles.png;/home/tomek/games/Data/Graphics/Portal.png;/home/tomek/games/Data/Graphics/cheese@2x.png;/home/tomek/games/Data/Graphics/Utility.png;/home/tomek/games/Data/Graphics/MineDead.png;/home/tomek/games/Data/Graphics/EvilTrace.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Graphics" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BlueWater.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Case.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/slider.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Drill.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Expl50.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Cross.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/star.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SmokeTrace.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/amRubber.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/WindBar.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/HHDeath.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Switch.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/custom1.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Power.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/icetexture.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Snow.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Parachute.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Mortar.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/amGirder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Seduction.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/AirDrill.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Bee.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/botlevels.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/PowerBar.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/knife.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Feather.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/amTeleport.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SmokeWhite.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Cake_down.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Targetp@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/cheese.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/RopeNode.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/thinking.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Birdy.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/MineOff.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Timebox.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SmokeRing.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/TargetBee@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/boing.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SnowDust.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BigDigits.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Arrow.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/AirBomb.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Flame.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/RopeHook.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Censored.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Piano.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Note.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/HellishBomb@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/ExplosivesRoll.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/hhMask.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BulletHit.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hammer.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Finger.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/WindR.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Cake_walk.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/missions.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/AirMine.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/RCPlane.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/ExplPart.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Teleport.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/cleaver.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/HellishBomb.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/NapalmBomb.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Target.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BeeTrace.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/MineOn.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/ExplPart2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Egg.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SMineOn.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Lag.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Explosives.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/LandIce.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SMineOff.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/amAirplane.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Frame.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Snowball.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Clouds.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Egg@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Dust.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Droplet.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BazookaShell.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/BigExplosion.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Molotov.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/ClParticle.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Girder.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Shells.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/ClBomb.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/HHDress.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/dynamite.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Targetp.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Crosshair.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/custom2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Airplane.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/WindL.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Watermelon.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Smoke.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Progress.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/hwengine.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/TargetBee.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Balls.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Health.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Bomb.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Splash.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Seduction@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/FirstAid.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Bubbles.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Portal.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/cheese@2x.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Utility.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/MineDead.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/EvilTrace.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/AmmoMenu/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Flags/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hats/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Hedgehog/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/SuddenDeath/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Missions/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

