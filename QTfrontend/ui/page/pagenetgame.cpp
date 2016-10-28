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

#include <QGridLayout>
#include <QHBoxLayout>
#include <QPushButton>
#include <QAction>
#include <QMenu>
#include <QMessageBox>
#include <QSettings>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QProgressBar>
#include <QTime>
#include <QDate>
#include <QProgressBar>

#include "pagenetgame.h"
#include "gamecfgwidget.h"
#include "teamselect.h"
#include "chatwidget.h"
#include "ThemeModel.h"
#include "FileEngine.h"
#include "GameStyleModel.h"

const int cutoffHeight = 688; /* Don't make this number below 605, or else it'll
                                 let the GameCFGWidget shrink too much before switching to tabbed mode. */

QLayout * PageNetGame::bodyLayoutDefinition()
{
    QGridLayout * pageLayout = new QGridLayout();
    pageLayout->setSizeConstraint(QLayout::SetMinimumSize);
    pageLayout->setColumnStretch(0, 1);
    pageLayout->setColumnStretch(1, 1);
    pageLayout->setRowStretch(0, 0);
    pageLayout->setRowStretch(1, 0);
    pageLayout->setRowStretch(2, 1);

    // Room config

    QHBoxLayout * roomConfigLayout = new QHBoxLayout();
    pageLayout->addLayout(roomConfigLayout, 0, 0, 1, 2);
    roomConfigLayout->setSpacing(0);

    leRoomName = new HistoryLineEdit(this, 10);
    leRoomName->setWhatsThis(tr("Room name"));
    leRoomName->setMaxLength(60);
    leRoomName->setMinimumWidth(400);
    leRoomName->setMaximumWidth(600);
    leRoomName->setFixedHeight(30);
    leRoomName->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
    leRoomName->setStyleSheet("border-right: 0; padding-left: 4px; border-top-right-radius: 0px; border-bottom-right-radius: 0px;");
    roomConfigLayout->addWidget(leRoomName, 100);

    BtnUpdate = new QPushButton();
    BtnUpdate->setWhatsThis(tr("Update the room name"));
    BtnUpdate->setEnabled(false);
    BtnUpdate->setText(tr("Update"));
    BtnUpdate->setFixedHeight(leRoomName->height() - 0);
    BtnUpdate->setStyleSheet("border-top-left-radius: 0px; border-bottom-left-radius: 0px; padding: auto 4px;");
    roomConfigLayout->addWidget(BtnUpdate, 0);

    lblRoomNameReadOnly = new QLabel();
    lblRoomNameReadOnly->setMinimumWidth(400);
    lblRoomNameReadOnly->setMaximumWidth(600);
    lblRoomNameReadOnly->setFixedHeight(30);
    lblRoomNameReadOnly->setObjectName("labelLikeLineEdit");
    lblRoomNameReadOnly->setStyleSheet("font: 12px;");
    lblRoomNameReadOnly->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
    lblRoomNameReadOnly->setVisible(false);
    roomConfigLayout->addWidget(lblRoomNameReadOnly, 100);

    roomConfigLayout->addSpacing(10);

    BtnMaster = new QPushButton();
    BtnMaster->setText(tr("Room controls"));
    BtnMaster->setFixedHeight(leRoomName->height() - 0);
    BtnMaster->setStyleSheet("QPushButton { padding: auto 4px; } QPushButton:pressed { background-color: #ffcc00; border-color: #ffcc00; border-bottom-left-radius: 0px; border-bottom-right-radius: 0px; color: #11084A; }");
    roomConfigLayout->addWidget(BtnMaster, 0);

    roomConfigLayout->addStretch(1);

    // Game config

    pGameCFG = new GameCFGWidget(this, true);
    pageLayout->addWidget(pGameCFG, 1, 0);

    // Teams

    pNetTeamsWidget = new TeamSelWidget(this);
    pNetTeamsWidget->setAcceptOuter(true);
    pNetTeamsWidget->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    pageLayout->addWidget(pNetTeamsWidget, 1, 1);

    // Chat

    chatWidget = new HWChatWidget(this, true);
    chatWidget->setShowFollow(false); // don't show follow in nicks' context menus
    chatWidget->setIgnoreListKick(true); // kick ignored players automatically
    chatWidget->setMinimumHeight(50);
    chatWidget->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Minimum);
    pageLayout->addWidget(chatWidget, 2, 0, 1, 2);

    return pageLayout;
}

QLayout * PageNetGame::footerLayoutLeftDefinition()
{
    QHBoxLayout * bottomLeftLayout = new QHBoxLayout();
    bottomLeftLayout->setContentsMargins(0,0,0,0);

    btnSetup = addButton(":/res/Settings.png", bottomLeftLayout, 0, true, Qt::AlignBottom);
    btnSetup->setWhatsThis(tr("Edit game preferences"));

    return bottomLeftLayout;
}

QLayout * PageNetGame::footerLayoutDefinition()
{
    QHBoxLayout * bottomLayout = new QHBoxLayout;
    
    // Transfer Bars
    
    progressBarsLayout = new QVBoxLayout();
    bottomLayout->addLayout(progressBarsLayout);
    bottomLayout->addStretch();

    // Ready button

    BtnGo = new QPushButton(this);
    BtnGo->setIconSize(QSize(25, 34));
    BtnGo->setWhatsThis(tr("Turn on the lightbulb to show the other players when you're ready to fight"));
    setReadyStatus(false);
    BtnGo->setMinimumWidth(50);
    BtnGo->setMinimumHeight(50);

    bottomLayout->addStretch();
    bottomLayout->addWidget(BtnGo, 0, Qt::AlignBottom);

    // Start button

    const QIcon& lp = QIcon(":/res/Start.png");
    QSize sz = lp.actualSize(QSize(65535, 65535));
    BtnStart = new QPushButton();
    BtnStart->setText(tr("Start"));
    BtnStart->setWhatsThis(tr("Start fighting (requires at least 2 teams)"));
    BtnStart->setMinimumWidth(sz.width() + 60);
    BtnStart->setIcon(lp);
    BtnStart->setFixedHeight(50);
    BtnStart->setIconSize(sz);
    BtnStart->setFlat(true);
    BtnStart->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
    bottomLayout->addWidget(BtnStart, 0, Qt::AlignBottom);

    return bottomLayout;
}

void PageNetGame::connectSignals()
{
    connect(btnSetup, SIGNAL(clicked()), this, SIGNAL(SetupClicked()));

    connect(BtnUpdate, SIGNAL(clicked()), this, SLOT(onUpdateClick()));
    connect(leRoomName, SIGNAL(returnPressed()), this, SLOT(onUpdateClick()));

    connect(leRoomName, SIGNAL(textChanged(const QString &)), this, SLOT(onRoomNameEdited()));
}

PageNetGame::PageNetGame(QWidget* parent) : AbstractPage(parent)
{
    initPage();

    QMenu * menu = new QMenu(BtnMaster);

    restrictJoins = new QAction(QAction::tr("Restrict Joins"), menu);
    restrictJoins->setCheckable(true);
    restrictTeamAdds = new QAction(QAction::tr("Restrict Team Additions"), menu);
    restrictTeamAdds->setCheckable(true);
    restrictUnregistered = new QAction(QAction::tr("Restrict Unregistered Players Join"), menu);
    restrictUnregistered->setCheckable(true);
    menu->addAction(restrictJoins);
    menu->addAction(restrictTeamAdds);
    menu->addAction(restrictUnregistered);

    BtnMaster->setMenu(menu);

    if (height() < cutoffHeight)
        pGameCFG->setTabbed(true);
    
    initTeamResources();
}

void PageNetGame::resizeEvent(QResizeEvent * event)
{
    int oldHeight = event->oldSize().height();
    int newHeight = event->size().height();

    if (newHeight < cutoffHeight && oldHeight >= cutoffHeight)
    {
        pGameCFG->setTabbed(true);
    }
    else if (newHeight >= cutoffHeight && oldHeight < cutoffHeight)
    {
        pGameCFG->setTabbed(false);
    }
}

void PageNetGame::displayError(const QString & message)
{
    chatWidget->displayError(message);
}


void PageNetGame::displayNotice(const QString & message)
{
    chatWidget->displayNotice(message);
}

void PageNetGame::displayWarning(const QString & message)
{
    chatWidget->displayWarning(message);
}


void PageNetGame::setReadyStatus(bool isReady)
{
    if(isReady)
        BtnGo->setIcon(QIcon(":/res/lightbulb_on.png"));
    else if (!isMissingResource(false))
        BtnGo->setIcon(QIcon(":/res/lightbulb_off.png"));
    amReady = isReady;
}

void PageNetGame::onRoomNameEdited()
{
    BtnUpdate->setEnabled(true);
}

void PageNetGame::onUpdateClick()
{
    if (!leRoomName->text().trimmed().isEmpty())
    {
        m_gameSettings->setValue("frontend/lastroomname", leRoomName->text());
        leRoomName->rememberCurrentText();
        BtnUpdate->setEnabled(false);
        emit askForUpdateRoomName(leRoomName->text());
    }
    else
    {
        leRoomName->clear();
        QMessageBox roomMsg(this);
        roomMsg.setIcon(QMessageBox::Warning);
        roomMsg.setWindowTitle(QMessageBox::tr("Netgame - Error"));
        roomMsg.setText(QMessageBox::tr("Please enter room name"));
        roomMsg.setWindowModality(Qt::WindowModal);
        roomMsg.exec();
        leRoomName->setFocus();
    }
}


void PageNetGame::setRoomName(const QString & roomName)
{
    leRoomName->setText(roomName);
    leRoomName->rememberCurrentText();
    lblRoomNameReadOnly->setText(roomName);
    BtnUpdate->setEnabled(false);
}

void PageNetGame::setMasterMode(bool isMaster)
{
    BtnMaster->setVisible(isMaster);
    BtnStart->setVisible(isMaster);
    BtnUpdate->setVisible(isMaster);
    leRoomName->setVisible(isMaster);
    lblRoomNameReadOnly->setVisible(!isMaster);
    pGameCFG->setMaster(isMaster);
    repaint();
}

void PageNetGame::setUser(const QString & nickname)
{
    chatWidget->setUser(nickname);
}

void PageNetGame::setSettings(QSettings *settings)
{
    m_gameSettings = settings;
}



void PageNetGame::btnGoClicked() {
    if (!isMissingResource(false))
        emit toggleReady();
    else {
        QHashIterator<QString, QSet<QString> > i(resourcesMissing);
        while (i.hasNext()) {
            i.next();
            foreach (QString loc, i.value())
                fetchLocator(i.key(), loc);
        }
    }
}

void PageNetGame::resourceMissing(const QString & type) {
    resourcesMissing.insert(type, QSet<QString>());
    
    if (type != "FLAG" && type != "HAT" && type != "GRAVE" && type != "VOICE") {
        if (amReady) {
            amReady = false;
            emit toggleReady();
        }
    }
}

void PageNetGame::handleLocatorRequest(const QString & from, const QString & nick, const QString & type)
{
    if (from != chatWidget->getUser()) return;
    QString locator = "";
    QString location = "";
    
    if (type == QString("THEME"))
        locator = QString("physfs://Themes/%1/locator").arg(pGameCFG->pMapContainer->getCurrentTheme());
    else if (type == QString("MAP"))
        locator = QString("physfs://Maps/%1/locator").arg(pGameCFG->pMapContainer->getCurrentMap());
    else if (type == QString("SCRIPT"))
        locator = QString("physfs://Scripts/Multiplayer/%1.lua").arg(pGameCFG->pMapContainer->getCurrentScript());
    else { //searching in user teams
        foreach (HWTeam team, pNetTeamsWidget->getPlayingTeams()) {
            if (team.owner() == "") {
                if (type == QString("VOICE")) {
                    locator = QString("physfs://Sounds/voices/%1/locator").arg(team.voicepack());
                } else if (type == QString("FLAG")) {
                    if (teamResourceLocators.contains(".Flags." + team.flag()))
                        location = teamResourceLocators.value(".Flags." + team.flag());
                } else if (type == QString("GRAVE")) {
                    if (teamResourceLocators.contains(".Graves." + team.grave()))
                        location = teamResourceLocators.value(".Graves." + team.grave());
                } else if (type == QString("FORT")) {
                    if (teamResourceLocators.contains(".Forts." + team.fort()))
                        location = teamResourceLocators.value(".Forts." + team.fort());
                } else if (type == QString("HAT")) { //check hat of each hedgehog
                    for (int i=0; i<8; i++)
                        if (teamResourceLocators.contains(".Hats." + team.hedgehog(i).Hat))
                            emit locatorReply(nick, type, teamResourceLocators.value(".Hats." + team.hedgehog(i).Hat));
                        
                    return; //^ separate emit for hats
                }
            }
            
            if (location == "") {
                if (!QFile::exists(locator))
                    location = "?";
                else {
                    QFile locatorFile(locator);
                    locatorFile.open(QIODevice::ReadOnly);
                    QTextStream in(&locatorFile);
                    
                    location = in.readLine();
                }
            }
            emit locatorReply(nick, type, location);
        }
        
        return; //^ separate emit for team resources
    }
    
    if (location == "") {
        if (!QFile::exists(locator))
            location = "?";
        else {
            QFile locatorFile(locator);
            locatorFile.open(QIODevice::ReadOnly);
            QTextStream in(&locatorFile);
            
            location = in.readLine();
            
            if (type == "SCRIPT") {
                if (location.startsWith("--http"))
                    location = location.right(location.size()-2);
                else
                    location = "?";
            }
        }
    }
    
    emit locatorReply(nick, type, location);
}

void PageNetGame::loadLocator(const QString & nick, const QString & type, const QString & location) {
    if (nick != chatWidget->getUser() || (location == "?" && (type == "HAT" || type == "GRAVE" || type == "VOICE" || type == "FLAG")))
        return;
    QString location2;
    
    if (location != "?")
    {
        bool restricted = true;
        bool registered = true;
        if (location.startsWith("?")) {
            location2 = location.right(location.size()-1);
            registered = false;
        }
        else
            location2 = location;
        
        int restriction = m_gameSettings->value("net/dlc", 2).toInt();
        if (restriction == 3) restricted = false;
        else if (restriction == 2 && registered) restricted = false;
        else if (restriction == 1 && (location.contains("hedgewars.org") || location.contains("hh.unit22.org"))) restricted = false;
        
        if (restricted) {
            if (type == "HAT" || type == "GRAVE" || type == "VOICE" || type == "FLAG") return;
            BtnGo->setIcon(QIcon(":/res/btnOverlay@2x.png"));
            BtnGo->setWhatsThis(tr("You are missing some required DLC and download is restricted"));
            location2 = "?";
        }
        else {
            BtnGo->setIcon(QIcon(":/res/download.png"));
            BtnGo->setWhatsThis(tr("Download the missing DLC"));
        }
    }
    else
    {
        BtnGo->setIcon(QIcon(":/res/btnOverlay@2x.png"));
        BtnGo->setWhatsThis(tr("You are missing some required DLC and no download is available"));
    }
    
    resourcesMissing[type].insert(location2);
}

void PageNetGame::fetchLocator(const QString & type, const QString & location)
{
    if (location == "?")
        return;
    
    QString finalLocation(location);
    
    if (finalLocation.contains("dropbox") && !finalLocation.endsWith("?dl=1") && !finalLocation.endsWith("?raw=1")) {
        if (finalLocation.endsWith("?dl=0"))
            finalLocation = finalLocation.left(finalLocation.length() - 5);
        finalLocation.append("?dl=1");
    }
    
    qWarning() << "Download Request" << finalLocation;

    QUrl url(finalLocation);
    QNetworkRequest newRequest(url);

    QNetworkAccessManager *manager = new QNetworkAccessManager(this);
    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(locatorDone(QNetworkReply*)));
    
    QNetworkReply *reply = manager->get(newRequest);
    connect(reply, SIGNAL(downloadProgress(qint64, qint64)), this, SLOT(downloadProgress(qint64, qint64)));

    QProgressBar *progressBar = new QProgressBar(this);
    progressBarsLayout->addWidget(progressBar);
    progressBars.insert(reply, progressBar);
    resourceLocators.insert(reply, type);
}

void PageNetGame::locatorDone(QNetworkReply* reply) {
    QProgressBar *progressBar = progressBars.value(reply, 0);
    QString type = resourceLocators.value(reply);

    if(progressBar)
    {
        progressBars.remove(reply);
        progressBar->deleteLater();
        resourcesMissing[type].remove(reply->url().toString());
        resourceLocators.remove(reply);
    }
    
    if (!reply->attribute(QNetworkRequest::RedirectionTargetAttribute).isNull()) {
        QUrl redirect = reply->attribute(QNetworkRequest::RedirectionTargetAttribute).toUrl();
        qWarning() << "Request Redirect" << redirect;
        
        QNetworkRequest newRequest = QNetworkRequest(redirect);
        QNetworkAccessManager *manager = new QNetworkAccessManager(this);
        connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(locatorDone(QNetworkReply*)));
        
        QNetworkReply *reply = manager->get(newRequest);
        connect(reply, SIGNAL(downloadProgress(qint64, qint64)), this, SLOT(downloadProgress(qint64, qint64)));

        QProgressBar *progressBar = new QProgressBar(this);
        progressBarsLayout->addWidget(progressBar);
        progressBars.insert(reply, progressBar);
        resourceLocators.insert(reply, type);
        return;
    }
    
    QDir extractDir(*cfgdir);
    extractDir.cd("Data");

    QString fileName = extractDir.filePath(QFileInfo(reply->request().url().path()).fileName());
    if (fileName.endsWith(".zip"))
        fileName = fileName.left(fileName.length() - 4) + ".hwp";
    else if (!fileName.endsWith(".hwp")) { //file is without extension, so assuming a non-unique name
        QDate timestamp = QDate::currentDate();
        QTime timestamp2 = QTime::currentTime();
        fileName = extractDir.filePath(QString("CachedData") + QString::number(timestamp.day()) + QString::number(timestamp.month()) + QString::number(timestamp.year()) + QString::number(timestamp2.hour()) + QString::number(timestamp2.minute()) + QString::number(timestamp2.second()) + QString(".hwp"));
    }

    QFile out(fileName);
    if(!out.open(QFile::WriteOnly))
    {
        qWarning() << "out.open():" << out.errorString();
        return ;
    }

    QByteArray data(reply->readAll());
    out.write(data);

    out.close();

    FileEngineHandler::mount(fileName);
    
    if (type == "THEME") {
        DataManager::instance().themeModel()->reset();
        pGameCFG->pMapContainer->setTheme(pGameCFG->pMapContainer->getCurrentTheme());
    } else if (type == "MAP") {
        DataManager::instance().staticMapModel()->reset();
        DataManager::instance().missionMapModel()->reset();
        if (pGameCFG->pMapContainer->cachedMapName != "") {
            QString tempName = pGameCFG->pMapContainer->cachedMapName;
            pGameCFG->pMapContainer->cachedMapName = "";
            pGameCFG->pMapContainer->setMap(tempName);
        }
    } else if (type == "SCRIPT" && pGameCFG->cachedScriptName != "") {
        DataManager::instance().gameStyleModel()->loadGameStyles();
        if (pGameCFG->setScript(pGameCFG->cachedScriptName))
            pGameCFG->cachedScriptName = "";
    }
    
    isMissingResource(true);
}

void PageNetGame::downloadProgress(qint64 bytesRecieved, qint64 bytesTotal)
{
    QNetworkReply * reply = qobject_cast<QNetworkReply *>(sender());

    if(reply)
    {
        QProgressBar *progressBar = progressBars.value(reply, 0);

        if(progressBar)
        {
            progressBar->setValue(bytesRecieved);
            progressBar->setMaximum(bytesTotal);
        }
    }
}

void PageNetGame::resourceUpdate(const QString & type) {
    resourcesMissing.remove(type);
    
    isMissingResource(true);
}

void PageNetGame::initTeamResources() {
    DataManager & datamgr = DataManager::instance();
    initTeamResource(datamgr.entryList("Graphics/Flags", QDir::Files), "Flags");
    initTeamResource(datamgr.entryList("Graphics/Hats", QDir::Files), "Hats");
    initTeamResource(datamgr.entryList("Graphics/Graves", QDir::Files), "Graves");
    
    foreach (QString file, datamgr.entryList("Forts", QDir::Files)) {
        if (file.startsWith("locator")) {
            QFile locatorFile("physfs://Forts/" + file);
            locatorFile.open(QIODevice::ReadOnly);
            QTextStream in(&locatorFile);
            
            QString url;
            QString line = in.readLine();
            
            if (line.isNull()) continue;
            else url = line;
            
            line = in.readLine();
            while (!line.isNull()) {
                teamResourceLocators.insert(".Forts." + line, url);
                line = in.readLine();
            }
        }
    }
}

void PageNetGame::initTeamResource(const QStringList& source, const QString& type) {
    foreach (QString file, source) {
        if (file.startsWith("locator")) {
            QFile locatorFile("physfs://Graphics/" + type + "/" + file);
            locatorFile.open(QIODevice::ReadOnly);
            QTextStream in(&locatorFile);
            
            QString url;
            QString line = in.readLine();
            
            if (line.isNull()) continue;
            else url = line;
            
            line = in.readLine();
            while (!line.isNull()) {
                teamResourceLocators.insert("." + type + "." + line, url);
                line = in.readLine();
            }
        }
    }
}

bool PageNetGame::isMissingResource(bool updateBulb) {
    bool allDone = true;
    QHashIterator<QString, QSet<QString> > i(resourcesMissing);
    while (i.hasNext()) {
        i.next();
        if (!i.value().isEmpty())
            allDone = false;
        else
            resourcesMissing.remove(i.key());
    }
    
    if (allDone && updateBulb && !amReady) {
        BtnGo->setIcon(QIcon(":/res/lightbulb_off.png"));
        BtnGo->setWhatsThis(tr("Turn on the lightbulb to show the other players when you're ready to fight"));
    }
    
    return !allDone;
}