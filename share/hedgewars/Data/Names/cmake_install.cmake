# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names

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
   "/home/tomek/games/Data/Names/types.ini;/home/tomek/games/Data/Names/brainslug.txt;/home/tomek/games/Data/Names/whysoserious.txt;/home/tomek/games/Data/Names/fruit.txt;/home/tomek/games/Data/Names/clown.txt;/home/tomek/games/Data/Names/ninja.txt;/home/tomek/games/Data/Names/cowboy.txt;/home/tomek/games/Data/Names/crown.txt;/home/tomek/games/Data/Names/apple.txt;/home/tomek/games/Data/Names/generic.txt;/home/tomek/games/Data/Names/kiss.txt;/home/tomek/games/Data/Names/wizard.txt;/home/tomek/games/Data/Names/orange.txt;/home/tomek/games/Data/Names/CMakeLists.txt;/home/tomek/games/Data/Names/indian.txt;/home/tomek/games/Data/Names/banana.txt;/home/tomek/games/Data/Names/pirate.txt;/home/tomek/games/Data/Names/bandit.txt;/home/tomek/games/Data/Names/ushanka.cfg;/home/tomek/games/Data/Names/spartan.cfg;/home/tomek/games/Data/Names/RobinHood.cfg;/home/tomek/games/Data/Names/NinjaTriangle.cfg;/home/tomek/games/Data/Names/cyborg1.cfg;/home/tomek/games/Data/Names/fr_banana.cfg;/home/tomek/games/Data/Names/pirate_jack_bandana.cfg;/home/tomek/games/Data/Names/Cowboy.cfg;/home/tomek/games/Data/Names/WizardHat.cfg;/home/tomek/games/Data/Names/knight.cfg;/home/tomek/games/Data/Names/pirate_jack.cfg;/home/tomek/games/Data/Names/hair_grey.cfg;/home/tomek/games/Data/Names/clown.cfg;/home/tomek/games/Data/Names/sf_ryu.cfg;/home/tomek/games/Data/Names/beefeater.cfg;/home/tomek/games/Data/Names/StrawHat.cfg;/home/tomek/games/Data/Names/StrawHatFacial.cfg;/home/tomek/games/Data/Names/zoo_Bunny.cfg;/home/tomek/games/Data/Names/Glasses.cfg;/home/tomek/games/Data/Names/royalguard.cfg;/home/tomek/games/Data/Names/scif_BrainSlug2.cfg;/home/tomek/games/Data/Names/sth_Sonic.cfg;/home/tomek/games/Data/Names/Bandit.cfg;/home/tomek/games/Data/Names/Hat.cfg;/home/tomek/games/Data/Names/hair_pink.cfg;/home/tomek/games/Data/Names/NinjaFull.cfg;/home/tomek/games/Data/Names/NinjaStraight.cfg;/home/tomek/games/Data/Names/poke_slowpoke.cfg;/home/tomek/games/Data/Names/kiss_frehley.cfg;/home/tomek/games/Data/Names/Santa.cfg;/home/tomek/games/Data/Names/hair_purple.cfg;/home/tomek/games/Data/Names/cap_green.cfg;/home/tomek/games/Data/Names/kiss_simmons.cfg;/home/tomek/games/Data/Names/Sunglasses.cfg;/home/tomek/games/Data/Names/Samurai.cfg;/home/tomek/games/Data/Names/fr_orange.cfg;/home/tomek/games/Data/Names/fr_apple.cfg;/home/tomek/games/Data/Names/WhySoSerious.cfg;/home/tomek/games/Data/Names/mp3.cfg;/home/tomek/games/Data/Names/hair_blue.cfg;/home/tomek/games/Data/Names/hair_yellow.cfg;/home/tomek/games/Data/Names/hair_red.cfg;/home/tomek/games/Data/Names/scif_swStormtrooper.cfg;/home/tomek/games/Data/Names/crown.cfg;/home/tomek/games/Data/Names/kiss_criss.cfg;/home/tomek/games/Data/Names/scif_swDarthvader.cfg;/home/tomek/games/Data/Names/hair_green.cfg;/home/tomek/games/Data/Names/cap_yellow.cfg;/home/tomek/games/Data/Names/mv_Venom.cfg;/home/tomek/games/Data/Names/SparkleSuperFun.cfg;/home/tomek/games/Data/Names/NoHat.cfg;/home/tomek/games/Data/Names/clown-copper.cfg;/home/tomek/games/Data/Names/kiss_stanley.cfg;/home/tomek/games/Data/Names/Viking.cfg;/home/tomek/games/Data/Names/hair_orange.cfg;/home/tomek/games/Data/Names/ntd_Kirby.cfg;/home/tomek/games/Data/Names/HogInTheHat.cfg;/home/tomek/games/Data/Names/cap_red.cfg;/home/tomek/games/Data/Names/IndianChief.cfg;/home/tomek/games/Data/Names/clown-crossed.cfg;/home/tomek/games/Data/Names/fr_lemon.cfg;/home/tomek/games/Data/Names/StrawHatEyes.cfg;/home/tomek/games/Data/Names/scif_BrainSlug.cfg;/home/tomek/games/Data/Names/cap_blue.cfg;/home/tomek/games/Data/Names/MegaHogX.cfg")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Names" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/types.ini"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/brainslug.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/whysoserious.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/fruit.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/clown.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/ninja.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cowboy.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/crown.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/apple.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/generic.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/kiss.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/wizard.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/orange.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/CMakeLists.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/indian.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/banana.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/pirate.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/bandit.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/ushanka.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/spartan.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/RobinHood.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/NinjaTriangle.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cyborg1.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/fr_banana.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/pirate_jack_bandana.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Cowboy.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/WizardHat.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/knight.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/pirate_jack.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_grey.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/clown.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/sf_ryu.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/beefeater.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/StrawHat.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/StrawHatFacial.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/zoo_Bunny.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Glasses.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/royalguard.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/scif_BrainSlug2.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/sth_Sonic.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Bandit.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Hat.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_pink.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/NinjaFull.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/NinjaStraight.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/poke_slowpoke.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/kiss_frehley.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Santa.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_purple.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cap_green.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/kiss_simmons.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Sunglasses.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Samurai.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/fr_orange.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/fr_apple.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/WhySoSerious.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/mp3.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_blue.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_yellow.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_red.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/scif_swStormtrooper.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/crown.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/kiss_criss.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/scif_swDarthvader.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_green.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cap_yellow.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/mv_Venom.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/SparkleSuperFun.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/NoHat.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/clown-copper.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/kiss_stanley.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/Viking.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/hair_orange.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/ntd_Kirby.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/HogInTheHat.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cap_red.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/IndianChief.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/clown-crossed.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/fr_lemon.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/StrawHatEyes.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/scif_BrainSlug.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/cap_blue.cfg"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Names/MegaHogX.cfg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

