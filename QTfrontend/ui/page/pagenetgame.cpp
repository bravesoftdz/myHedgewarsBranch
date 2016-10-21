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
    {
        BtnGo->setIcon(QIcon(":/res/lightbulb_on.png"));
    }
    else
    {
        BtnGo->setIcon(QIcon(":/res/lightbulb_off.png"));
    }
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
    if (resourcesMissing.isEmpty())
        emit toggleReady();
    else {
        QHashIterator<QString, QString> i(resourcesMissing);
        while (i.hasNext()) {
            i.next();
            if (i.value() != QString("")) {
                fetchLocator(i.key(), i.value());
                resourcesMissing.insert(i.key(), "");
            }
        }
    }
}

void PageNetGame::resourceMissing(const QString & type) {
    BtnGo->setIcon(QIcon(":/res/btnOverlay@2x.png"));
    resourcesMissing.insert(type, "");
    
    if (amReady)
        emit toggleReady();
}

void PageNetGame::loadLocator(const QString & nick, const QString & type, const QString & location) {
    if (location == QString("?") || nick != chatWidget->getUser())
        return;
    BtnGo->setIcon(QIcon(":/res/download.png"));
    resourcesMissing.insert(type, location);
}

void PageNetGame::fetchLocator(const QString & type, const QString & location)
{
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

    if(progressBar)
    {
        progressBars.remove(reply);
        progressBar->deleteLater();
        resourcesMissing.remove(resourceLocators.value(reply));
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
    
    DataManager::instance().themeModel()->reset(); //should probably check if theme was just download, not map etc.
    //also, should update gamecfg widget if there are icons missing or such
    DataManager::instance().staticMapModel()->reset();
    DataManager::instance().missionMapModel()->reset();
    
    if (resourcesMissing.isEmpty())
        BtnGo->setIcon(QIcon(":/res/lightbulb_off.png"));
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
    
    if (resourcesMissing.isEmpty())
        BtnGo->setIcon(QIcon(":/res/lightbulb_off.png"));
}