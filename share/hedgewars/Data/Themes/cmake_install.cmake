# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Art/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bamboo/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Bath/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Blox/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Brick/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Cake/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Cave/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Castle/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Cheese/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Christmas/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/City/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Compost/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/CrazyMission/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Deepspace/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Desert/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/EarthRise/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Eyes/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Freeway/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Fruit/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Golf/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Halloween/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Hell/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Hoggywood/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Island/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Jungle/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Nature/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Olympics/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Planes/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Sheep/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Snow/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Stage/cmake_install.cmake")
  INCLUDE("/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Themes/Underwater/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

