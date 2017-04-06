# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves

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
   "/home/tomek/games/Data/Graphics/Graves/Flower.png;/home/tomek/games/Data/Graphics/Graves/star.png;/home/tomek/games/Data/Graphics/Graves/dragonball.png;/home/tomek/games/Data/Graphics/Graves/Statue.png;/home/tomek/games/Data/Graphics/Graves/skull.png;/home/tomek/games/Data/Graphics/Graves/Simple.png;/home/tomek/games/Data/Graphics/Graves/money.png;/home/tomek/games/Data/Graphics/Graves/Ghost.png;/home/tomek/games/Data/Graphics/Graves/heart.png;/home/tomek/games/Data/Graphics/Graves/bp2.png;/home/tomek/games/Data/Graphics/Graves/pyramid.png;/home/tomek/games/Data/Graphics/Graves/Grave.png;/home/tomek/games/Data/Graphics/Graves/ring.png;/home/tomek/games/Data/Graphics/Graves/plant2.png;/home/tomek/games/Data/Graphics/Graves/deadhog.png;/home/tomek/games/Data/Graphics/Graves/Bone.png;/home/tomek/games/Data/Graphics/Graves/coffin.png;/home/tomek/games/Data/Graphics/Graves/Duck2.png;/home/tomek/games/Data/Graphics/Graves/octopus.png;/home/tomek/games/Data/Graphics/Graves/chest.png;/home/tomek/games/Data/Graphics/Graves/mouton1.png;/home/tomek/games/Data/Graphics/Graves/Rip.png;/home/tomek/games/Data/Graphics/Graves/Egg.png;/home/tomek/games/Data/Graphics/Graves/Badger.png;/home/tomek/games/Data/Graphics/Graves/Earth.png;/home/tomek/games/Data/Graphics/Graves/pokeball.png;/home/tomek/games/Data/Graphics/Graves/Plinko.png;/home/tomek/games/Data/Graphics/Graves/bubble.png;/home/tomek/games/Data/Graphics/Graves/eyecross.png;/home/tomek/games/Data/Graphics/Graves/Cherry.png;/home/tomek/games/Data/Graphics/Graves/plant3.png;/home/tomek/games/Data/Graphics/Graves/Rubberduck.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Graphics/Graves" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Flower.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/star.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/dragonball.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Statue.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/skull.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Simple.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/money.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Ghost.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/heart.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/bp2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/pyramid.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Grave.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/ring.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/plant2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/deadhog.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Bone.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/coffin.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Duck2.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/octopus.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/chest.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/mouton1.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Rip.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Egg.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Badger.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Earth.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/pokeball.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Plinko.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/bubble.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/eyecross.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Cherry.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/plant3.png"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Graphics/Graves/Rubberduck.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

