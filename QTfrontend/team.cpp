/*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2005-2007, 2009 Andrey Korotaev <unC0Rr@gmail.com>
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
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 */

#include <QFile>
#include <QTextStream>
#include <QApplication>
#include <QStringList>
#include <QLineEdit>
#include <QCryptographicHash>
#include "team.h"
#include "hwform.h"
#include "pages.h"
#include "hwconsts.h"
#include "hats.h"

HWTeam::HWTeam(const QString & teamname) :
    difficulty(0),
    numHedgehogs(4),
    m_isNetTeam(false)
{
    TeamName = teamname;
    OldTeamName = TeamName;
    for (int i = 0; i < 8; i++)
    {
        HHName[i].sprintf("hedgehog %d", i);
        HHHat[i] = "NoHat";
    }
    Grave = "Statue";
    Fort = "Plane";
    Voicepack = "Default";
    Flag = "hedgewars";
    for(int i = 0; i < BINDS_NUMBER; i++)
    {
        binds[i].action = cbinds[i].action;
        binds[i].strbind = cbinds[i].strbind;
    }
}

HWTeam::HWTeam(const QStringList& strLst) :
  numHedgehogs(4),
  m_isNetTeam(true)
{
    // net teams are configured from QStringList
    if(strLst.size() != 23) throw HWTeamConstructException();
    TeamName = strLst[0];
    Grave = strLst[1];
    Fort = strLst[2];
    Voicepack = strLst[3];
    Flag = strLst[4];
    Owner = strLst[5];
    difficulty = strLst[6].toUInt();
    for(int i = 0; i < 8; i++)
    {
        HHName[i]=strLst[i * 2 + 7];
        HHHat[i]=strLst[i * 2 + 8];
// Somehow claymore managed an empty hat.  Until we figure out how, this should avoid a repeat
// Checking net teams is probably pointless, but can't hurt.
        if (HHHat[i].length() == 0) HHHat[i] = "NoHat"; 
    }
}

HWTeam::HWTeam() :
  difficulty(0),
  numHedgehogs(4),
  m_isNetTeam(false)
{
    TeamName = QString("Team");
    for (int i = 0; i < 8; i++)
    {
        HHName[i].sprintf("hedgehog %d", i);
        HHHat[i] = "NoHat";
    }

    Grave = QString("Simple"); // default
    Fort = QString("Island"); // default
    Voicepack = "Default";
    Flag = "hedgewars";

    for(int i = 0; i < BINDS_NUMBER; i++)
    {
        binds[i].action = cbinds[i].action;
        binds[i].strbind = cbinds[i].strbind;
    }
}


bool HWTeam::LoadFromFile()
{
    numHedgehogs=4;
    QFile cfgfile(cfgdir->absolutePath() + "/" + TeamName + ".cfg");
    if (!cfgfile.open(QIODevice::ReadOnly)) return false;
    QTextStream stream(&cfgfile);
    stream.setCodec("UTF-8");
    QString str;
    QString action;

    while (!stream.atEnd())
    {
        str = stream.readLine();
        if (str.startsWith(";")) continue;
        /*if (str.startsWith("name team "))
        {
            str.remove(0, 10);
            TeamName = str;
        } else*/
        if (str.startsWith("name hh"))
        {
            str.remove(0, 7);
            long i = str.left(1).toLong();
            if ((i < 0) || (i > 7)) continue;
            str.remove(0, 2);
            HHName[i] = str;
        } else
        if (str.startsWith("hat"))
        {
            str.remove(0, 3);
            long i = str.left(1).toLong();
            if ((i < 0) || (i > 7)) continue;
            str.remove(0, 2);
            HHHat[i] = str;
// Somehow claymore managed an empty hat.  Until we figure out how, this should avoid a repeat
            if (HHHat[i].length() == 0) HHHat[i] = "NoHat"; 
        } else
        if (str.startsWith("grave "))
        {
            str.remove(0, 6);
            Grave = str;
        } else
        if (str.startsWith("fort "))
        {
            str.remove(0, 5);
            Fort = str;
        } else
        if (str.startsWith("flag "))
        {
            str.remove(0, 5);
            Flag = str;
        } else
        if (str.startsWith("voicepack "))
        {
            str.remove(0, 10);
            Voicepack = str;
        } else
        if (str.startsWith("bind "))
        {
            str.remove(0, 5);
            action = str.section(' ', 1);
            str = str.section(' ', 0, 0);
            str.truncate(15);
            for (int i = 0; i < BINDS_NUMBER; i++)
                if (action == binds[i].action)
                {
                    binds[i].strbind = str;
                    break;
                }
        } else
        if (str.startsWith("difficulty "))
        {
          str.remove(0, 11);
          difficulty=str.toUInt();
          if (difficulty>5) difficulty=0; // this shouldn't normally happen
        }
    }
    cfgfile.close();
    return true;
}

bool HWTeam::DeleteFile()
{
    if(m_isNetTeam)
        return false;

    QFile cfgfile(cfgdir->absolutePath() + "/" + TeamName + ".cfg");
    cfgfile.remove();

        
    return true;
}

bool HWTeam::SaveToFile()
{
    if (OldTeamName != TeamName)
    {
        QFile cfgfile(cfgdir->absolutePath() + "/" + OldTeamName + ".cfg");
        cfgfile.remove();
        OldTeamName = TeamName;
    }
    QFile cfgfile(cfgdir->absolutePath() + "/" + TeamName + ".cfg");
    if (!cfgfile.open(QIODevice::WriteOnly)) return false;
    QTextStream stream(&cfgfile);
    stream.setCodec("UTF-8");
    stream << "; Generated by Hedgewars, do not modify" << endl;
    stream << "name team " << TeamName << endl;
    for (int i = 0; i < 8; i++)
    {
        stream << "name hh" << i << " " << HHName[i] << endl;
        stream << "hat" << i << " " << HHHat[i] << endl;
    }
    stream << "grave " << Grave << endl;
    stream << "fort " << Fort << endl;
    stream << "voicepack " << Voicepack << endl;
    stream << "flag " << Flag << endl;
    for(int i = 0; i < BINDS_NUMBER; i++)
    {
        stream << "bind " << binds[i].strbind << " " << binds[i].action << endl;
    }
    stream << "difficulty " << difficulty << endl;
    cfgfile.close();
    return true;
}

void HWTeam::SetToPage(HWForm * hwform)
{
    hwform->ui.pageEditTeam->TeamNameEdit->setText(TeamName);
    hwform->ui.pageEditTeam->CBTeamLvl->setCurrentIndex(difficulty);
    for(int i = 0; i < 8; i++)
    {
         hwform->ui.pageEditTeam->HHNameEdit[i]->setText(HHName[i]);
         if (HHHat[i].startsWith("Reserved"))
            hwform->ui.pageEditTeam->HHHats[i]->setCurrentIndex(hwform->ui.pageEditTeam->HHHats[i]->findData("Reserved "+HHHat[i].remove(0,40), Qt::DisplayRole));
         else
            hwform->ui.pageEditTeam->HHHats[i]->setCurrentIndex(hwform->ui.pageEditTeam->HHHats[i]->findData(HHHat[i], Qt::DisplayRole));
    }
    hwform->ui.pageEditTeam->CBGrave->setCurrentIndex(hwform->ui.pageEditTeam->CBGrave->findText(Grave));
    hwform->ui.pageEditTeam->CBFlag->setCurrentIndex(hwform->ui.pageEditTeam->CBFlag->findText(Flag));

    hwform->ui.pageEditTeam->CBFort->setCurrentIndex(hwform->ui.pageEditTeam->CBFort->findText(Fort));
    hwform->ui.pageEditTeam->CBVoicepack->setCurrentIndex(hwform->ui.pageEditTeam->CBVoicepack->findText(Voicepack));
    //hwform->ui.pageEditTeam->CBFort_activated(Fort);

    for(int i = 0; i < BINDS_NUMBER; i++)
    {
        hwform->ui.pageEditTeam->CBBind[i]->setCurrentIndex(hwform->ui.pageEditTeam->CBBind[i]->findData(binds[i].strbind));
    }
}

void HWTeam::GetFromPage(HWForm * hwform)
{
    TeamName  = hwform->ui.pageEditTeam->TeamNameEdit->text();
    difficulty = hwform->ui.pageEditTeam->CBTeamLvl->currentIndex();
    for(int i = 0; i < 8; i++)
    {
        HHName[i] = hwform->ui.pageEditTeam->HHNameEdit[i]->text();
        if (hwform->ui.pageEditTeam->HHHats[i]->currentText().startsWith("Reserved"))
            HHHat[i] = "Reserved"+playerHash+hwform->ui.pageEditTeam->HHHats[i]->currentText().remove(0,9);
        else
            HHHat[i] = hwform->ui.pageEditTeam->HHHats[i]->currentText();
    }

    Grave = hwform->ui.pageEditTeam->CBGrave->currentText();
    Fort = hwform->ui.pageEditTeam->CBFort->currentText();
    Voicepack = hwform->ui.pageEditTeam->CBVoicepack->currentText();
    Flag = hwform->ui.pageEditTeam->CBFlag->currentText();
    for(int i = 0; i < BINDS_NUMBER; i++)
    {
        binds[i].strbind = hwform->ui.pageEditTeam->CBBind[i]->itemData(hwform->ui.pageEditTeam->CBBind[i]->currentIndex()).toString();
    }
}

QStringList HWTeam::TeamGameConfig(quint32 InitHealth) const
{
    QStringList sl;
    if (m_isNetTeam)
    {
        sl.push_back(QString("eaddteam %3 %1 %2").arg(teamColor.rgb() & 0xffffff).arg(TeamName).arg(QString(QCryptographicHash::hash(Owner.toLatin1(), QCryptographicHash::Md5).toHex())));
        sl.push_back("erdriven");
    }
    else sl.push_back(QString("eaddteam %3 %1 %2").arg(teamColor.rgb() & 0xffffff).arg(TeamName).arg(playerHash));

    sl.push_back(QString("egrave " + Grave));
    sl.push_back(QString("efort " + Fort));
    sl.push_back(QString("evoicepack " + Voicepack));
    sl.push_back(QString("eflag " + Flag));

    if (!m_isNetTeam)
        for(int i = 0; i < BINDS_NUMBER; i++)
            if(!binds[i].strbind.isEmpty())
                sl.push_back(QString("ebind " + binds[i].strbind + " " + binds[i].action));

    for (int t = 0; t < numHedgehogs; t++)
    {
      sl.push_back(QString("eaddhh %1 %2 %3")
               .arg(QString::number(difficulty),
                QString::number(InitHealth),
                HHName[t]));
      sl.push_back(QString("ehat %1")
               .arg(HHHat[t]));
    }
    return sl;
}

bool HWTeam::isNetTeam() const
{
  return m_isNetTeam;
}


bool HWTeam::operator==(const HWTeam& t1) const {
  return TeamName==t1.TeamName;
}

bool HWTeam::operator<(const HWTeam& t1) const {
  return TeamName<t1.TeamName; // if names are equal - test if it is net team
}


