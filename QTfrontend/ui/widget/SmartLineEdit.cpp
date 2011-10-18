/*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2006-2007 Igor Ulyanov <iulyanov@gmail.com>
 * Copyright (c) 2007-2011 Andrey Korotaev <unC0Rr@gmail.com>
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

#include <QStringList>

#include "SmartLineEdit.h"

SmartLineEdit::SmartLineEdit(QWidget * parent)
: QLineEdit(parent)
{
    m_whitespace = QRegExp("\\s");

    m_cmds  = new QStringList();
    m_nicks = new QStringList();

    reset();

    // reset when cursor is moved or content is changed
    connect(this, SIGNAL(cursorPositionChanged(int, int)), this, SLOT(reset()));
    connect(this, SIGNAL(textChanged(const QString&)), this, SLOT(reset()));
}


void SmartLineEdit::addCommands(const QStringList & commands)
{
    m_mutex.lock();

    m_cmds->append(commands);

    m_mutex.unlock();
}


void SmartLineEdit::removeCommands(const QStringList & commands)
{
    m_mutex.lock();

    foreach (const QString & cmd, commands)
    {
        m_cmds->removeAll(cmd);
    }

    m_mutex.unlock();
}


void SmartLineEdit::addNickname(const QString & name)
{
    m_mutex.lock();

    m_nicks->append(name);

    m_mutex.unlock();
}


void SmartLineEdit::removeNickname(const QString & name)
{
    m_mutex.lock();

    m_nicks->removeAll(name);

    m_mutex.unlock();
}

bool SmartLineEdit::event(QEvent * event)
{
    // we only want special treatment for key press events
    if (event->type() == QEvent::KeyPress)
    {
        QKeyEvent * keyEvent = static_cast<QKeyEvent*>(event);

        // TAB key pressed and any useful chars in the matchMe -> let's process those
        if ((keyEvent->key() == Qt::Key_Tab) && (!text().trimmed().isEmpty()))
        {
            keyPressEvent(keyEvent);
            if (event->isAccepted())
                return true;
        }
    }
    return QLineEdit::event(event);
}

void SmartLineEdit::keyPressEvent(QKeyEvent * event)
{
    int key = event->key(); // retrieve pressed key

    // auto-complete on pressed TAB (except for whitespace-only contents)
    if ((key == Qt::Key_Tab) && (!text().trimmed().isEmpty()))
    {
        autoComplete();
        event->accept();
    }
    // clear contents on pressed ESC
    else if ((event->key() == Qt::Key_Escape) &&
             (event->modifiers() == Qt::NoModifier)
    )
        clear();
    // otherwise forward keys to parent
    else
        QLineEdit::keyPressEvent(event);
}


void SmartLineEdit::autoComplete()
{
    QString match = "";
    bool isNick = false;
    QString matchMe = text();
    QString prefix = "";
    QString postfix = "";
    bool isFirstWord;

    // we are trying to rematch, so use the data from earlier
    if (m_hasJustMatched)
    {
        // restore values from earlier auto-completion
        matchMe = m_beforeMatch;
        prefix = m_prefix;
        postfix = m_postfix;
        isFirstWord = prefix.isEmpty();
    }
    else
    {
        m_mutex.lock();
        m_cmds->sort();
        m_nicks->sort();
        m_mutex.unlock();

        int cp = cursorPosition();

        // cursor is not in or at end/beginning of word
        if ((cp = matchMe.length()) || (QString(matchMe.at(cp)).contains(m_whitespace)))
            if ((cp < 1) || (QString(matchMe.at(cp-1)).contains(m_whitespace)))
                return;

        // crop matchMe at cursor position
        prefix  = matchMe.left (cp);
        postfix = matchMe.right(matchMe.length()-cp);

        matchMe = "";


        // use the whole word the curser is on for matching
        int prefixLen = prefix.lastIndexOf(m_whitespace) + 1;
        int preWordLen = prefix.length() - prefixLen;
        int postWordLen = postfix.indexOf(m_whitespace);
        int postfixLen = 0;
        if (postWordLen < 0)
            postWordLen = postfix.length();
        else
            postfixLen = postfix.length() - (postWordLen + 1);

        matchMe = prefix.right(preWordLen) + postfix.left(postWordLen);
        prefix  = prefix.left(prefixLen);
        postfix = postfix.right(postfixLen);


        isFirstWord = prefix.isEmpty(); // true if first word
    }


    m_mutex.lock();

    if (isFirstWord)
    {
        // find matching commands
        foreach (const QString & cmd, *m_cmds)
        {
            if (cmd.startsWith(matchMe, Qt::CaseInsensitive))
            {
                match = cmd;

                // move match to end so next time new matches will be prefered
                if (m_cmds->removeAll(cmd) > 0);
                    m_cmds->append(cmd);

                break;
            }
        }
    }

    if (match.isEmpty())
    {
        // find matching nicks
        foreach (const QString & nick, *m_nicks)
        {
            if (nick.startsWith(matchMe, Qt::CaseInsensitive))
            {
                match = nick;
                isNick = true;

                // move match to end so next time new matches will be prefered
                if (m_nicks->removeAll(nick) > 0);
                    m_nicks->append(nick);

                break;
            }
        }
    }

    m_mutex.unlock();

    // we found a single match?
    if (!match.isEmpty())
    {
        // replace last word with match
        // and append ':' if a name at the beginning of the matchMe got completed
        // also add a space at the very end to ease further typing
        QString addAfter = ((isNick && isFirstWord)?": ":" ");
        match = prefix + match + addAfter;
        setText(match + postfix);

        setCursorPosition(match.length());

        // save values for for the case a rematch is requested
        m_beforeMatch = matchMe;
        m_hasJustMatched = true;
        m_prefix = prefix;
        m_postfix = postfix;
    }
}

void SmartLineEdit::reset()
{
    m_beforeMatch = "";
    m_hasJustMatched = false;
    m_prefix = "";
    m_postfix = "";
}
