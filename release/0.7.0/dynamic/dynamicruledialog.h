/*
 * Cantata
 *
 * Copyright (c) 2011-2012 Craig Drummond <craig.p.drummond@gmail.com>
 *
 * ----
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

#ifndef DYNAMIC_RULE_DIALOG_H
#define DYNAMIC_RULE_DIALOG_H

#include "config.h"
#ifdef ENABLE_KDE_SUPPORT
#include <KDE/KDialog>
#else
#include <QtGui/QDialog>
class QDialogButtonBox;
class QAbstractButton;
class QPushButton;
#endif
#include "ui_dynamicrule.h"
#include "dynamic.h"


#ifdef ENABLE_KDE_SUPPORT
class DynamicRuleDialog : public KDialog, Ui::DynamicRule
#else
class DynamicRuleDialog : public QDialog, Ui::DynamicRule
#endif
{
    Q_OBJECT

public:
    DynamicRuleDialog(QWidget *parent);
    virtual ~DynamicRuleDialog();

    bool edit(const Dynamic::Rule &rule);
    Dynamic::Rule rule() const;

    QString artist() const { return artistText->text().trimmed(); }
    QString albumArtist() const { return albumArtistText->text().trimmed(); }
    QString album() const { return albumText->text().trimmed(); }
    QString title() const { return titleText->text().trimmed(); }
    QString genre() const { return 0==genreCombo->currentIndex() ? QString() : genreCombo->currentText(); }


private Q_SLOTS:
    void enableOkButton();

#ifndef ENABLE_KDE_SUPPORT
private:
    QDialogButtonBox *buttonBox;
#endif
};

#endif