/*
 * Cantata
 *
 * Copyright (c) 2011 Craig Drummond <craig.p.drummond@gmail.com>
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

#ifndef OUTPUTSETTINGS_H
#define OUTPUTSETTINGS_H

#include "ui_outputsettings.h"
#include "output.h"
#include <QtCore/QList>

class OutputSettings : public QWidget, private Ui::OutputSettings
{
    Q_OBJECT

public:
    OutputSettings(QWidget *p);
    virtual ~OutputSettings() { }

    void load();
    void save();

Q_SIGNALS:
    // These are for communicating with MPD object (which is in its own thread, so need to talk via singal/slots)
    void outputs();
    void enable(int id);
    void disable(int id);

private Q_SLOTS:
    void updateOutpus(const QList<Output> &outputs);
};

#endif
