/*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2006-2011 Andrey Korotaev <unC0Rr@gmail.com>
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

#include <QGridLayout>
#include <QPushButton>
#include <QComboBox>
#include <QLabel>
#include <QLineEdit>
#include <QTabWidget>
#include <QGroupBox>
#include <QToolBox>

#include "pageeditteam.h"
#include "sdlkeys.h"
#include "hwconsts.h"
#include "SquareLabel.h"
#include "hats.h"
#include "HWApplication.h"

PageEditTeam::PageEditTeam(QWidget* parent, SDLInteraction * sdli) :
  AbstractPage(parent)
{
    mySdli = sdli;
    QGridLayout * pageLayout = new QGridLayout(this);
    QTabWidget * tbw = new QTabWidget(this);
    QWidget * page1 = new QWidget(this);
    QWidget * page2 = new QWidget(this);
    tbw->addTab(page1, tr("General"));
    tbw->addTab(page2, tr("Advanced"));
    pageLayout->addWidget(tbw, 0, 0, 1, 3);
    BtnTeamDiscard = addButton(":/res/Exit.png", pageLayout, 1, 0, true);
    BtnTeamSave = addButton(":/res/Save.png", pageLayout, 1, 2, true);;
    BtnTeamSave->setStyleSheet("QPushButton{margin: 12px 0px 12px 0px;}");
    BtnTeamDiscard->setFixedHeight(BtnTeamSave->height());
    BtnTeamDiscard->setStyleSheet("QPushButton{margin-top: 31px;}");

    QHBoxLayout * page1Layout = new QHBoxLayout(page1);
    page1Layout->setAlignment(Qt::AlignTop);
    QGridLayout * page2Layout = new QGridLayout(page2);

// ====== Page 1 ======
    QVBoxLayout * vbox1 = new QVBoxLayout();
    QVBoxLayout * vbox2 = new QVBoxLayout();
    page1Layout->addLayout(vbox1);
    page1Layout->addLayout(vbox2);

    GBoxHedgehogs = new QGroupBox(this);
    GBoxHedgehogs->setTitle(QGroupBox::tr("Team Members"));
    GBoxHedgehogs->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
    QGridLayout * GBHLayout = new QGridLayout(GBoxHedgehogs);

    signalMapper = new QSignalMapper(this);

    HatsModel * hatsModel = new HatsModel(GBoxHedgehogs);
    for(int i = 0; i < 8; i++)
    {
        HHHats[i] = new QComboBox(GBoxHedgehogs);
        HHHats[i]->setModel(hatsModel);
        HHHats[i]->setIconSize(QSize(32, 37));
        //HHHats[i]->setSizeAdjustPolicy(QComboBox::AdjustToContents);
        //HHHats[i]->setModelColumn(1);
        //HHHats[i]->setMinimumWidth(132);
        GBHLayout->addWidget(HHHats[i], i, 0);

        HHNameEdit[i] = new QLineEdit(GBoxHedgehogs);
        HHNameEdit[i]->setMaxLength(64);
        HHNameEdit[i]->setMinimumWidth(120);
        GBHLayout->addWidget(HHNameEdit[i], i, 1);

        randButton[i] = addButton(":/res/dice.png", GBHLayout, i, 3, true);

        connect(randButton[i], SIGNAL(clicked()), signalMapper, SLOT(map()));
            signalMapper->setMapping(randButton[i], i);

    }

    randTeamButton = addButton(QPushButton::tr("Random Team"), GBHLayout, 9, false);

    vbox1->addWidget(GBoxHedgehogs);


    GBoxTeam = new QGroupBox(this);
    GBoxTeam->setTitle(QGroupBox::tr("Team Settings"));
    GBoxTeam->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
    QGridLayout * GBTLayout = new QGridLayout(GBoxTeam);
    QLabel * tmpLabel = new QLabel(GBoxTeam);
    tmpLabel->setText(QLabel::tr("Name"));
    GBTLayout->addWidget(tmpLabel, 0, 0);
    tmpLabel = new QLabel(GBoxTeam);
    tmpLabel->setText(QLabel::tr("Type"));
    GBTLayout->addWidget(tmpLabel, 1, 0);
    tmpLabel = new QLabel(GBoxTeam);
    tmpLabel->setText(QLabel::tr("Grave"));
    GBTLayout->addWidget(tmpLabel, 2, 0);
    tmpLabel = new QLabel(GBoxTeam);
    tmpLabel->setText(QLabel::tr("Flag"));
    GBTLayout->addWidget(tmpLabel, 3, 0);
    tmpLabel = new QLabel(GBoxTeam);
    tmpLabel->setText(QLabel::tr("Voice"));
    GBTLayout->addWidget(tmpLabel, 4, 0);


    TeamNameEdit = new QLineEdit(GBoxTeam);
    TeamNameEdit->setMaxLength(64);
    GBTLayout->addWidget(TeamNameEdit, 0, 1);
    vbox2->addWidget(GBoxTeam);

    CBTeamLvl = new QComboBox(GBoxTeam);
    CBTeamLvl->setIconSize(QSize(48, 48));
    CBTeamLvl->addItem(QIcon(":/res/botlevels/0.png"), QComboBox::tr("Human"));
    for(int i = 5; i > 0; i--)
        CBTeamLvl->addItem(
                QIcon(QString(":/res/botlevels/%1.png").arg(6 - i)),
                QString("%1 %2").arg(QComboBox::tr("Level")).arg(i)
                );
    GBTLayout->addWidget(CBTeamLvl, 1, 1);

    CBGrave = new QComboBox(GBoxTeam);
    CBGrave->setMaxCount(65535);
    CBGrave->setIconSize(QSize(32, 32));
    GBTLayout->addWidget(CBGrave, 2, 1);

    CBFlag = new QComboBox(GBoxTeam);
    CBFlag->setMaxCount(65535);
    CBFlag->setIconSize(QSize(22, 15));
    GBTLayout->addWidget(CBFlag, 3, 1);

    {
        QHBoxLayout * hbox = new QHBoxLayout();
        CBVoicepack = new QComboBox(GBoxTeam);
        {
            QDir tmpdir;
            QStringList list;
            tmpdir.cd(cfgdir->absolutePath());
            if (tmpdir.cd("Data/Sounds/voices")) 
            {
                list = tmpdir.entryList(QDir::AllDirs | QDir::NoDotAndDotDot, QDir::Name);
                CBVoicepack->addItems(list);
            }

            tmpdir.cd(datadir->absolutePath());
            tmpdir.cd("Sounds/voices");
            QStringList tmplist = tmpdir.entryList(QDir::AllDirs | QDir::NoDotAndDotDot, QDir::Name);
            QStringList tmplist2;
            for (QStringList::Iterator it = tmplist.begin(); it != tmplist.end(); ++it)
                if (!list.contains(*it,Qt::CaseInsensitive)) tmplist2.append(*it);

            CBVoicepack->addItems(tmplist2);
        }
        hbox->addWidget(CBVoicepack, 100);
        BtnTestSound = addButton(":/res/PlaySound.png", hbox, 1, true);
        hbox->setStretchFactor(BtnTestSound, 1);
        connect(BtnTestSound, SIGNAL(clicked()), this, SLOT(testSound()));
        GBTLayout->addLayout(hbox, 4, 1);
    }

    GBoxFort = new QGroupBox(this);
    GBoxFort->setTitle(QGroupBox::tr("Fort"));
    QGridLayout * GBFLayout = new QGridLayout(GBoxFort);
    CBFort = new QComboBox(GBoxFort);
    CBFort->setMaxCount(65535);
    GBFLayout->addWidget(CBFort, 0, 0);
    FortPreview = new SquareLabel(GBoxFort);
    FortPreview->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    FortPreview->setMinimumSize(128, 128);
    FortPreview->setPixmap(QPixmap());
    // perhaps due to handling its own paintevents, SquareLabel doesn't play nice with the stars
    //FortPreview->setAttribute(Qt::WA_PaintOnScreen, true);
    GBFLayout->addWidget(FortPreview, 1, 0);
    vbox2->addWidget(GBoxFort);

    QDir tmpdir;
    QStringList userforts;
    tmpdir.cd(cfgdir->absolutePath());
    if (tmpdir.cd("Data/Forts"))
    {
        tmpdir.setFilter(QDir::Files);
        userforts = tmpdir.entryList(QStringList("*L.png")).replaceInStrings(QRegExp("^(.*)L\\.png"), "\\1");
        CBFort->addItems(userforts);
    }

    tmpdir.cd("../Graphics/Graves");
    QStringList userlist = tmpdir.entryList(QStringList("*.png"));
    for (QStringList::Iterator it = userlist.begin(); it != userlist.end(); ++it )
    {
        QPixmap pix(cfgdir->absolutePath() + "/Data/Graphics/Graves/" + *it);
        QIcon icon(pix.copy(0, 0, 32, 32));
        CBGrave->addItem(icon, QString(*it).replace(QRegExp("^(.*)\\.png"), "\\1"));
    }

    tmpdir.cd(datadir->absolutePath());
    tmpdir.cd("Forts");
    tmpdir.setFilter(QDir::Files);

    QStringList tmplist = tmpdir.entryList(QStringList("*L.png")).replaceInStrings(QRegExp("^(.*)L\\.png"), "\\1");
    QStringList dataforts;
    for (QStringList::Iterator it = tmplist.begin(); it != tmplist.end(); ++it)
        if (!userforts.contains(*it,Qt::CaseInsensitive)) dataforts.append(*it);

    CBFort->addItems(dataforts);
    connect(CBFort, SIGNAL(currentIndexChanged(const QString &)), this, SLOT(CBFort_activated(const QString &)));

    tmpdir.cd("../Graphics/Graves");
    QStringList datalist = tmpdir.entryList(QStringList("*.png"));
    for (QStringList::Iterator it = datalist.begin(); it != datalist.end(); ++it )
    {
        if (userlist.contains(*it,Qt::CaseInsensitive)) continue;
        QPixmap pix(datadir->absolutePath() + "/Graphics/Graves/" + *it);
        QIcon icon(pix.copy(0, 0, 32, 32));
        CBGrave->addItem(icon, (*it).replace(QRegExp("^(.*)\\.png"), "\\1"));
    }

    // add the default flag
    CBFlag->addItem(QIcon(QPixmap(datadir->absolutePath() + "/Graphics/Flags/hedgewars.png").copy(0, 0, 22, 15)), "Hedgewars", "hedgewars");
    CBFlag->insertSeparator(CBFlag->count());

    tmpdir.cd(cfgdir->absolutePath());
    tmpdir.cd("Data/Graphics/Flags");
    userlist = tmpdir.entryList(QStringList("*.png"));
    
    // add all country flags
    for (QStringList::Iterator it = userlist.begin(); it != userlist.end(); ++it )
    {
        QPixmap pix(cfgdir->absolutePath() + "/Data/Graphics/Flags/" + *it);
        QIcon icon(pix.copy(0, 0, 22, 15));
        if(it->compare("cpu.png") && it->compare("hedgewars.png") && (it->indexOf("cm_") == -1)) // skip cpu and hedgewars flags as well as all community flags
        {
            QString flag = QString(*it).replace(QRegExp("^(.*)\\.png"), "\\1");
            CBFlag->addItem(icon, QString(flag).replace("_", " "), flag);
        }
    }

    CBFlag->insertSeparator(CBFlag->count());

    // add all community flags
    for (QStringList::Iterator it = userlist.begin(); it != userlist.end(); ++it )
    {
        QPixmap pix(cfgdir->absolutePath() + "/Data/Graphics/Flags/" + *it);
        QIcon icon(pix.copy(0, 0, 22, 15));
        if(it->indexOf("cm_") > -1) // skip non community flags this time
        {
            QString flag = QString(*it).replace(QRegExp("^(.*)\\.png"), "\\1");
            CBFlag->addItem(icon, QString(flag).replace("cm_", QComboBox::tr("Community") + ": "), flag);
        }
    }

    CBFlag->insertSeparator(CBFlag->count());

    tmpdir.cd(datadir->absolutePath());
    tmpdir.cd("Graphics/Flags");
    datalist = tmpdir.entryList(QStringList("*.png"));
    
    // add all country flags
    for (QStringList::Iterator it = datalist.begin(); it != datalist.end(); ++it )
    {
        if (userlist.contains(*it,Qt::CaseInsensitive)) continue;
        QPixmap pix(datadir->absolutePath() + "/Graphics/Flags/" + *it);
        QIcon icon(pix.copy(0, 0, 22, 15));
        if(it->compare("cpu.png") && it->compare("hedgewars.png") && (it->indexOf("cm_") == -1)) // skip cpu and hedgewars flags as well as all community flags
        {
            QString flag = QString(*it).replace(QRegExp("^(.*)\\.png"), "\\1");
            CBFlag->addItem(icon, QString(flag).replace("_", " "), flag);
        }
    }

    CBFlag->insertSeparator(CBFlag->count());

    // add all community flags
    for (QStringList::Iterator it = datalist.begin(); it != datalist.end(); ++it )
    {
        if (userlist.contains(*it,Qt::CaseInsensitive)) continue;
        QPixmap pix(datadir->absolutePath() + "/Graphics/Flags/" + *it);
        QIcon icon(pix.copy(0, 0, 22, 15));
        if(it->indexOf("cm_") > -1) // skip non community flags this time
        {
            QString flag = (*it).replace(QRegExp("^(.*)\\.png"), "\\1");
            CBFlag->addItem(icon, QString(flag).replace("cm_", QComboBox::tr("Community") + ": "), flag);
        }
    }

    vbox1->addStretch();
    vbox2->addStretch();

// ====== Page 2 ======
    GBoxBinds = new QGroupBox(this);
    GBoxBinds->setTitle(QGroupBox::tr("Key binds"));
    QGridLayout * GBBLayout = new QGridLayout(GBoxBinds);
    BindsBox = new QToolBox(GBoxBinds);
    BindsBox->setLineWidth(0);
    GBBLayout->addWidget(BindsBox);
    page2Layout->addWidget(GBoxBinds, 0, 0);

    quint16 i = 0;
    quint16 num = 0;
    QWidget * curW = NULL;
    QGridLayout * pagelayout = NULL;
    QLabel* l = NULL;
    while (i < BINDS_NUMBER) {
        if(cbinds[i].category != NULL)
        {
            if(curW != NULL)
            {
                l = new QLabel(curW);
                l->setText("");
                pagelayout->addWidget(l, num++, 0, 1, 2);
            }
            curW = new QWidget(this);
            BindsBox->addItem(curW, HWApplication::translate("binds (categories)", cbinds[i].category));
            pagelayout = new QGridLayout(curW);
            num = 0;
        }
        if(cbinds[i].description != NULL)
        {
            l = new QLabel(curW);
            l->setText((num > 0 ? QString("\n") : QString("")) + HWApplication::translate("binds (descriptions)", cbinds[i].description));
            pagelayout->addWidget(l, num++, 0, 1, 2);
        }

        l = new QLabel(curW);
        l->setText(HWApplication::translate("binds", cbinds[i].name));
        l->setAlignment(Qt::AlignRight);
        pagelayout->addWidget(l, num, 0);
        CBBind[i] = new QComboBox(curW);
        for(int j = 0; sdlkeys[j][1][0] != '\0'; j++)
            CBBind[i]->addItem(HWApplication::translate("binds (keys)", sdlkeys[j][1]).contains(": ") ? HWApplication::translate("binds (keys)", sdlkeys[j][1]) : HWApplication::translate("binds (keys)", "Keyboard") + QString(": ") + HWApplication::translate("binds (keys)", sdlkeys[j][1]), sdlkeys[j][0]);
        pagelayout->addWidget(CBBind[i++], num++, 1);
    }
}

void PageEditTeam::CBFort_activated(const QString & fortname)
{
    QFile tmp;
    tmp.setFileName(cfgdir->absolutePath() + "/Data/Forts/" + fortname + "L.png");
    if (!tmp.exists()) tmp.setFileName(datadir->absolutePath() + "/Forts/" + fortname + "L.png");
    QPixmap pix(QFileInfo(tmp).absoluteFilePath());
    FortPreview->setPixmap(pix);
}

void PageEditTeam::testSound()
{
    Mix_Chunk *sound;
    QDir tmpdir;
    mySdli->SDLMusicInit();
    
    tmpdir.cd(cfgdir->absolutePath());
    tmpdir.cd("Data/Sounds/voices");
    tmpdir.cd(CBVoicepack->currentText());
    
    if (!tmpdir.exists()) {
        tmpdir.cd(datadir->absolutePath());
        tmpdir.cd("Sounds/voices");
        tmpdir.cd(CBVoicepack->currentText());
    }

    QStringList list = tmpdir.entryList(QStringList() << "Illgetyou.ogg" << "Incoming.ogg" << "Stupid.ogg" << "Coward.ogg" << "Firstblood.ogg", QDir::Files);
    if (list.size()) {
        sound = Mix_LoadWAV(QString(tmpdir.absolutePath() + "/" + list[rand() % list.size()]).toLocal8Bit().constData());
        Mix_PlayChannel(-1, sound, 0);
    }
}