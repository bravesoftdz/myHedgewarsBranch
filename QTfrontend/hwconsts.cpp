/*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2004-2015 Andrey Korotaev <unC0Rr@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#include <QStandardItemModel>

#include "hwconsts.h"
#include "weapons.h"

// cDataDir gets 'Data' appended later (in main.cpp)
QString * cDataDir = new QString("/home/tomek/games/");
QString * cProtoVer = new QString("52");
QString * cVersionString = new QString("0.9.23");
QString * cRevisionString = new QString("GIT");
QString * cHashString = new QString("de9bf6f");


QDir * bindir = new QDir();
QDir * cfgdir = new QDir();
QDir * datadir = new QDir();

bool custom_config = false;
bool custom_data = false;

int cMaxTeams = 8;
int cMinServerVersion = 3;

QString * cDefaultAmmoStore = new QString( AMMOLINE_DEFAULT_QT AMMOLINE_DEFAULT_PROB
                                           AMMOLINE_DEFAULT_DELAY AMMOLINE_DEFAULT_CRATE );
QString * cEmptyAmmoStore =   new QString( AMMOLINE_EMPTY_QT AMMOLINE_EMPTY_PROB
                                           AMMOLINE_EMPTY_DELAY AMMOLINE_EMPTY_CRATE );
int cAmmoNumber = cDefaultAmmoStore->size() / 4;

QList< QPair<QString, QString> > cDefaultAmmos =
        QList< QPair<QString, QString> >()
        << qMakePair(QString("Default"), *cDefaultAmmoStore)
        << qMakePair(QString("Crazy"),       QString(
            AMMOLINE_CRAZY_QT AMMOLINE_CRAZY_PROB
            AMMOLINE_CRAZY_DELAY AMMOLINE_CRAZY_CRATE ))
        << qMakePair(QString("Pro Mode"),    QString(
            AMMOLINE_PROMODE_QT AMMOLINE_PROMODE_PROB
            AMMOLINE_PROMODE_DELAY AMMOLINE_PROMODE_CRATE ))
        << qMakePair(QString("Shoppa"),      QString(
            AMMOLINE_SHOPPA_QT AMMOLINE_SHOPPA_PROB
            AMMOLINE_SHOPPA_DELAY AMMOLINE_SHOPPA_CRATE ))
        << qMakePair(QString("Clean Slate"), QString(
            AMMOLINE_CLEAN_QT AMMOLINE_CLEAN_PROB
            AMMOLINE_CLEAN_DELAY AMMOLINE_CLEAN_CRATE ))
        << qMakePair(QString("Minefield"),   QString(
            AMMOLINE_MINES_QT AMMOLINE_MINES_PROB
            AMMOLINE_MINES_DELAY AMMOLINE_MINES_CRATE ))
        << qMakePair(QString("Thinking with Portals"), QString(
            AMMOLINE_PORTALS_QT AMMOLINE_PORTALS_PROB
            AMMOLINE_PORTALS_DELAY AMMOLINE_PORTALS_CRATE ))
        << qMakePair(QString("One of Everything"), QString(
            AMMOLINE_ONEEVERY_QT AMMOLINE_ONEEVERY_PROB
            AMMOLINE_ONEEVERY_DELAY AMMOLINE_ONEEVERY_CRATE ))
        << qMakePair(QString("Highlander"), QString(
            AMMOLINE_HIGHLANDER_QT AMMOLINE_HIGHLANDER_PROB
            AMMOLINE_HIGHLANDER_DELAY AMMOLINE_HIGHLANDER_CRATE ))
		<< qMakePair(QString("Construction Mode"),   QString(
            AMMOLINE_CONSTRUCTION_QT AMMOLINE_CONSTRUCTION_PROB
            AMMOLINE_CONSTRUCTION_DELAY AMMOLINE_CONSTRUCTION_CRATE ))
		<< qMakePair(QString("Shoppa Pro"), QString(
            AMMOLINE_SHOPPAPRO_QT AMMOLINE_SHOPPAPRO_PROB
            AMMOLINE_SHOPPAPRO_DELAY AMMOLINE_SHOPPAPRO_CRATE ))
        ;

unsigned int colors[] = HW_TEAMCOLOR_ARRAY;

QString * netHost = new QString();
quint16 netPort = NETGAME_DEFAULT_PORT;

int season = SEASON_NONE;
int years_since_foundation = 0;
