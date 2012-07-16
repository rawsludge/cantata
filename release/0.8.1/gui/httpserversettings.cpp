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

#include "httpserversettings.h"
#include "settings.h"

HttpServerSettings::HttpServerSettings(QWidget *p)
    : QWidget(p)
{
    setupUi(this);
};

void HttpServerSettings::load()
{
    enableHttp->setChecked(Settings::self()->enableHttp());
    alwaysUseHttp->setChecked(Settings::self()->alwaysUseHttp());
    httpPort->setValue(Settings::self()->httpPort());
    httpAddress->setText(Settings::self()->httpAddress());
}

void HttpServerSettings::save()
{
    Settings::self()->saveEnableHttp(enableHttp->isChecked());
    Settings::self()->saveAlwaysUseHttp(alwaysUseHttp->isChecked());
    Settings::self()->saveHttpPort(httpPort->value());
    Settings::self()->saveHttpAddress(httpAddress->text());
}
