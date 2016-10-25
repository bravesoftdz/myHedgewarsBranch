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

#ifndef PAGE_NETGAME_H
#define PAGE_NETGAME_H

#include <QNetworkReply>
#include <QProgressBar>
#include "HistoryLineEdit.h"

#include "AbstractPage.h"

class HWChatWidget;
class TeamSelWidget;
class GameCFGWidget;
class QSettings;

class PageNetGame : public AbstractPage
{
        Q_OBJECT

    public:
        PageNetGame(QWidget* parent);

        void setSettings(QSettings * settings);

        void displayError(const QString & message);
        void displayNotice(const QString & message);
        void displayWarning(const QString & message);

        QPushButton *BtnGo;
        QPushButton *BtnMaster;
        QPushButton *BtnStart;
        QPushButton *BtnUpdate;
        HistoryLineEdit *leRoomName;

        QAction * restrictJoins;
        QAction * restrictTeamAdds;
        QAction * restrictUnregistered;

        HWChatWidget* chatWidget;

        TeamSelWidget* pNetTeamsWidget;
        GameCFGWidget* pGameCFG;

    public slots:
        void setRoomName(const QString & roomName);
        void setReadyStatus(bool isReady);
        void setUser(const QString & nickname);
        void onUpdateClick();
        void setMasterMode(bool isMaster);
    
        void btnGoClicked();
        void resourceUpdate(const QString &);
        void resourceMissing(const QString &);
        void handleLocatorRequest(const QString &, const QString &, const QString &);
        void loadLocator(const QString &, const QString &, const QString &);
        void locatorDone(QNetworkReply*);
        void downloadProgress(qint64, qint64);

    private slots:
        void onRoomNameEdited();

    signals:
        void SetupClicked();
        void askForUpdateRoomName(const QString &);
        void toggleReady();
        void locatorReply(const QString &, const QString &, const QString &);

    protected:
        void resizeEvent(QResizeEvent * event);

    private:
        QLayout * bodyLayoutDefinition();
        QLayout * footerLayoutDefinition();
        QLayout * footerLayoutLeftDefinition();
        void connectSignals();

        QSettings * m_gameSettings;
        QPushButton * btnSetup;
        QLabel * lblRoomNameReadOnly;
    
        void initTeamResources();
        void initTeamResource(const QStringList&, const QString&);
        void fetchLocator(const QString &, const QString &);
        bool isMissingResource(bool);
    
        bool amReady;
        QVBoxLayout *progressBarsLayout;
        QHash<QNetworkReply*, QProgressBar *> progressBars;
        QHash<QNetworkReply*, QString> resourceLocators;
        QHash<QString, QSet<QString> > resourcesMissing;
        QHash<QString, QString> teamResourceLocators;
};

#endif
