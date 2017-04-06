# Install script for directory: /home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale

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
   "/home/tomek/games/Data/Locale/ar.txt;/home/tomek/games/Data/Locale/en.txt;/home/tomek/games/Data/Locale/ja.txt;/home/tomek/games/Data/Locale/cs.txt;/home/tomek/games/Data/Locale/da.txt;/home/tomek/games/Data/Locale/nl.txt;/home/tomek/games/Data/Locale/fi.txt;/home/tomek/games/Data/Locale/lt.txt;/home/tomek/games/Data/Locale/fr.txt;/home/tomek/games/Data/Locale/it.txt;/home/tomek/games/Data/Locale/gl.txt;/home/tomek/games/Data/Locale/de.txt;/home/tomek/games/Data/Locale/sk.txt;/home/tomek/games/Data/Locale/uk.txt;/home/tomek/games/Data/Locale/bg.txt;/home/tomek/games/Data/Locale/el.txt;/home/tomek/games/Data/Locale/pl.txt;/home/tomek/games/Data/Locale/es.txt;/home/tomek/games/Data/Locale/tr.txt;/home/tomek/games/Data/Locale/ro.txt;/home/tomek/games/Data/Locale/ru.txt;/home/tomek/games/Data/Locale/sv.txt;/home/tomek/games/Data/Locale/hu.txt;/home/tomek/games/Data/Locale/ko.txt;/home/tomek/games/Data/Locale/pt_PT.txt;/home/tomek/games/Data/Locale/zh_CN.txt;/home/tomek/games/Data/Locale/zh_TW.txt;/home/tomek/games/Data/Locale/pt_BR.txt;/home/tomek/games/Data/Locale/hedgewars_ar.qm;/home/tomek/games/Data/Locale/hedgewars_fi.qm;/home/tomek/games/Data/Locale/hedgewars_fr.qm;/home/tomek/games/Data/Locale/hedgewars_pt_BR.qm;/home/tomek/games/Data/Locale/hedgewars_cs.qm;/home/tomek/games/Data/Locale/hedgewars_en.qm;/home/tomek/games/Data/Locale/hedgewars_zh_CN.qm;/home/tomek/games/Data/Locale/hedgewars_es.qm;/home/tomek/games/Data/Locale/hedgewars_bg.qm;/home/tomek/games/Data/Locale/hedgewars_pt_PT.qm;/home/tomek/games/Data/Locale/hedgewars_it.qm;/home/tomek/games/Data/Locale/hedgewars_hu.qm;/home/tomek/games/Data/Locale/hedgewars_ro.qm;/home/tomek/games/Data/Locale/hedgewars_da.qm;/home/tomek/games/Data/Locale/hedgewars_el.qm;/home/tomek/games/Data/Locale/hedgewars_ko.qm;/home/tomek/games/Data/Locale/hedgewars_gl.qm;/home/tomek/games/Data/Locale/hedgewars_sv.qm;/home/tomek/games/Data/Locale/hedgewars_nl.qm;/home/tomek/games/Data/Locale/hedgewars_sk.qm;/home/tomek/games/Data/Locale/hedgewars_gd.qm;/home/tomek/games/Data/Locale/hedgewars_uk.qm;/home/tomek/games/Data/Locale/hedgewars_ms.qm;/home/tomek/games/Data/Locale/hedgewars_ru.qm;/home/tomek/games/Data/Locale/hedgewars_ja.qm;/home/tomek/games/Data/Locale/hedgewars_pl.qm;/home/tomek/games/Data/Locale/hedgewars_tr_TR.qm;/home/tomek/games/Data/Locale/hedgewars_lt.qm;/home/tomek/games/Data/Locale/hedgewars_de.qm;/home/tomek/games/Data/Locale/hedgewars_zh_TW.qm;/home/tomek/games/Data/Locale/lt.lua;/home/tomek/games/Data/Locale/es.lua;/home/tomek/games/Data/Locale/pt_PT.lua;/home/tomek/games/Data/Locale/stub.lua;/home/tomek/games/Data/Locale/pt_BR.lua;/home/tomek/games/Data/Locale/de.lua;/home/tomek/games/Data/Locale/ko.lua;/home/tomek/games/Data/Locale/sv.lua;/home/tomek/games/Data/Locale/it.lua;/home/tomek/games/Data/Locale/pl.lua;/home/tomek/games/Data/Locale/fr.lua;/home/tomek/games/Data/Locale/uk.lua;/home/tomek/games/Data/Locale/cs.lua;/home/tomek/games/Data/Locale/ru.lua;/home/tomek/games/Data/Locale/zh_CN.lua;/home/tomek/games/Data/Locale/sk.lua;/home/tomek/games/Data/Locale/da.lua;/home/tomek/games/Data/Locale/tr.lua;/home/tomek/games/Data/Locale/missions_tr.txt;/home/tomek/games/Data/Locale/missions_pt.txt;/home/tomek/games/Data/Locale/missions_da.txt;/home/tomek/games/Data/Locale/missions_uk.txt;/home/tomek/games/Data/Locale/missions_ru.txt;/home/tomek/games/Data/Locale/missions_pt_BR.txt;/home/tomek/games/Data/Locale/missions_de.txt;/home/tomek/games/Data/Locale/missions_fr.txt;/home/tomek/games/Data/Locale/missions_pl.txt;/home/tomek/games/Data/Locale/missions_el.txt;/home/tomek/games/Data/Locale/missions_it.txt;/home/tomek/games/Data/Locale/missions_en.txt;/home/tomek/games/Data/Locale/campaigns_en.txt;/home/tomek/games/Data/Locale/campaigns_pt_BR.txt;/home/tomek/games/Data/Locale/campaigns_de.txt;/home/tomek/games/Data/Locale/campaigns_el.txt;/home/tomek/games/Data/Locale/campaigns_uk.txt;/home/tomek/games/Data/Locale/tips_uk.xml;/home/tomek/games/Data/Locale/tips_sk.xml;/home/tomek/games/Data/Locale/tips_en.xml;/home/tomek/games/Data/Locale/tips_de.xml;/home/tomek/games/Data/Locale/tips_fr.xml;/home/tomek/games/Data/Locale/tips_ru.xml;/home/tomek/games/Data/Locale/tips_it.xml;/home/tomek/games/Data/Locale/tips_es.xml;/home/tomek/games/Data/Locale/tips_cs.xml;/home/tomek/games/Data/Locale/tips_pl.xml;/home/tomek/games/Data/Locale/tips_da.xml;/home/tomek/games/Data/Locale/tips_fi.xml")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/tomek/games/Data/Locale" TYPE FILE FILES
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ar.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/en.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ja.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/cs.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/da.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/nl.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/fi.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/lt.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/fr.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/it.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/gl.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/de.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/sk.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/uk.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/bg.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/el.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pl.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/es.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tr.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ro.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ru.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/sv.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hu.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ko.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pt_PT.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/zh_CN.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/zh_TW.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pt_BR.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ar.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_fi.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_fr.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_pt_BR.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_cs.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_en.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_zh_CN.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_es.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_bg.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_pt_PT.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_it.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_hu.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ro.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_da.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_el.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ko.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_gl.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_sv.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_nl.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_sk.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_gd.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_uk.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ms.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ru.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_ja.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_pl.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_tr_TR.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_lt.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_de.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/hedgewars_zh_TW.qm"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/lt.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/es.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pt_PT.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/stub.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pt_BR.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/de.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ko.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/sv.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/it.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/pl.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/fr.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/uk.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/cs.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/ru.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/zh_CN.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/sk.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/da.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tr.lua"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_tr.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_pt.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_da.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_uk.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_ru.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_pt_BR.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_de.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_fr.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_pl.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_el.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_it.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/missions_en.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/campaigns_en.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/campaigns_pt_BR.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/campaigns_de.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/campaigns_el.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/campaigns_uk.txt"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_uk.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_sk.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_en.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_de.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_fr.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_ru.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_it.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_es.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_cs.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_pl.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_da.xml"
    "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data/Locale/tips_fi.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

