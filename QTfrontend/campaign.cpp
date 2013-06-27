/*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2004-2013 Andrey Korotaev <unC0Rr@gmail.com>
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

#include "campaign.h"
#include "hwconsts.h"
#include <QSettings>
#include <QHash>
#include <QDebug>

QStringList getCampMissionList(QString & campaign)
{
    QSettings campfile("physfs://Missions/Campaign/" + campaign + "/campaign.ini", QSettings::IniFormat, 0);
    campfile.setIniCodec("UTF-8");
    unsigned int mNum = campfile.value("MissionNum", 0).toInt();

    QStringList missionList;
    for (unsigned int i = 0; i < mNum; i++)
    {
      missionList += campfile.value(QString("Mission %1/Name").arg(i + 1)).toString();
    }
    return missionList;
}

unsigned int getCampProgress(QString & teamName, QString & campName)
{
    QSettings teamfile(cfgdir->absolutePath() + "/Teams/" + teamName + ".hwt", QSettings::IniFormat, 0);
    teamfile.setIniCodec("UTF-8");
    return teamfile.value("Campaign " + campName + "/Progress", 0).toInt();
}

QHash<QString,QString> getUnlockedMissions2(QString & campaignName, QString & teamName)
{
	QHash<QString,QString> hash;
	QSettings teamfile(cfgdir->absolutePath() + "/Teams/" + teamName + ".hwt", QSettings::IniFormat, 0);
    teamfile.setIniCodec("UTF-8");
    unsigned int progress = teamfile.value("Campaign " + campaignName + "/Progress", 0).toInt();
    qDebug("HERE is progress : %d",progress);
    unsigned int unlockedMissions = teamfile.value("Campaign " + campaignName + "/UnlockedMissions", 0).toInt();
    qDebug("HERE is unlocked missions : %d",unlockedMissions);
    
    QSettings campfile("physfs://Missions/Campaign/" + campaignName + "/campaign.ini", QSettings::IniFormat, 0);
    campfile.setIniCodec("UTF-8");
    unsigned int missionsNumber = campfile.value("MissionNum", 0).toInt();
    qDebug("HERE is number of missions : %d",missionsNumber);  
    
    if(progress>0)
    {
		for(unsigned int i=1;i<=missionsNumber;i++)
		{
			hash[getCampaignScript(campaignName,i)] = campfile.value(QString("Mission %1/Name").arg(i)).toString();
		}
	} 
	else if(unlockedMissions>0)
	{
		for(unsigned int i=1;i<=unlockedMissions;i++)
		{
			int missionNumber = teamfile.value("Campaign " + campaignName + "/Mission"+i, -1).toInt();
			hash[getCampaignScript(campaignName,missionNumber)] = campfile.value(QString("Mission %1/Name").arg(missionNumber)).toString();
		}
	}
	return hash;
}

QStringList getUnlockedMissions(QString & teamName, QString & campName)
{
	QSettings teamfile(cfgdir->absolutePath() + "/Teams/" + teamName + ".hwt", QSettings::IniFormat, 0);
    teamfile.setIniCodec("UTF-8");
    unsigned int mNum = teamfile.value("UnlockedMissions", 0).toInt();
    
    QStringList missionList;
    for (unsigned int i = 0; i < mNum; i++)
    {
      missionList += teamfile.value(QString("Mission%1").arg(i + 1)).toString();
    }
    return missionList;
}

QString getCampaignScript(QString campaign, unsigned int mNum)
{
    QSettings campfile("physfs://Missions/Campaign/" + campaign + "/campaign.ini", QSettings::IniFormat, 0);
    campfile.setIniCodec("UTF-8");
    return campfile.value(QString("Mission %1/Script").arg(mNum)).toString();
}

QString getCampaignImage(QString campaign, unsigned int mNum)
{
    return getCampaignScript(campaign,mNum).replace(QString(".lua"),QString(".png"));
}

QString getCampaignMissionName(QString campaign, unsigned int mNum)
{
    return getCampaignScript(campaign,mNum).replace(QString(".lua"),QString(""));
}

