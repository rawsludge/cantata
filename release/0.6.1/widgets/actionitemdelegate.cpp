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

#include "actionitemdelegate.h"
#include "itemview.h"
#include <QtGui/QPainter>
#include <QtGui/QAction>
#include <QtGui/QPixmap>
#include <QtGui/QIcon>

const int ActionItemDelegate::constBorder = 1;
const int ActionItemDelegate::constActionBorder = 4;
const int ActionItemDelegate::constActionIconSize=16;

QRect ActionItemDelegate::calcActionRect(bool rtl, bool iconMode, const QRect &rect)
{
    return rtl
                ? iconMode
                    ? QRect(rect.x()+constActionBorder,
                            rect.y()+constActionBorder,
                            constActionIconSize, constActionIconSize)
                    : QRect(rect.x()+constActionBorder,
                            rect.y()+((rect.height()-constActionIconSize)/2),
                            constActionIconSize, constActionIconSize)
                : iconMode
                    ? QRect(rect.x()+rect.width()-(constActionIconSize+constActionBorder),
                            rect.y()+constActionBorder,
                            constActionIconSize, constActionIconSize)
                    : QRect(rect.x()+rect.width()-(constActionIconSize+constActionBorder),
                            rect.y()+((rect.height()-constActionIconSize)/2),
                            constActionIconSize, constActionIconSize);
}

void ActionItemDelegate::adjustActionRect(bool rtl, bool iconMode, QRect &rect)
{
    if (rtl) {
        if (iconMode) {
            rect.adjust(0, constActionIconSize+constActionBorder, 0, constActionIconSize+constActionBorder);
        } else {
            rect.adjust(constActionIconSize+constActionBorder, 0, constActionIconSize+constActionBorder, 0);
        }
    } else {
        if (iconMode) {
            rect.adjust(0, constActionIconSize+constActionBorder, 0, constActionIconSize+constActionBorder);
        } else {
            rect.adjust(-(constActionIconSize+constActionBorder), 0, -(constActionIconSize+constActionBorder), 0);
        }
    }
}

bool ActionItemDelegate::hasActions(const QModelIndex &index, int actLevel)
{
    if (actLevel<0) {
        return true;
    }

    int level=0;

    QModelIndex idx=index;
    while(idx.parent().isValid()) {
        if (++level>actLevel) {
            return false;
        }
        idx=idx.parent();
    }
    return true;
}

// static QPainterPath buildPath(const QRectF &r, double radius)
// {
//     QPainterPath path;
//     double diameter(radius*2);
//
//     path.moveTo(r.x()+r.width(), r.y()+r.height()-radius);
//     path.arcTo(r.x()+r.width()-diameter, r.y(), diameter, diameter, 0, 90);
//     path.arcTo(r.x(), r.y(), diameter, diameter, 90, 90);
//     path.arcTo(r.x(), r.y()+r.height()-diameter, diameter, diameter, 180, 90);
//     path.arcTo(r.x()+r.width()-diameter, r.y()+r.height()-diameter, diameter, diameter, 270, 90);
//     return path;
// }

static void drawBgnd(QPainter *painter, const QRect &rx)
{
    QRectF r(rx.x()-0.5, rx.y()-0.5, rx.width()+1, rx.height()+1);
    QPainterPath p;//(buildPath(r, r.width()/2.0));
    QColor c(Qt::white);

    p.addEllipse(r);
    painter->setRenderHint(QPainter::Antialiasing, true);
    c.setAlphaF(0.75);
    painter->fillPath(p, c);
//     c.setAlphaF(0.95);
//     painter->setPen(c);
//     painter->drawPath(p);
    painter->setRenderHint(QPainter::Antialiasing, false);
}

void ActionItemDelegate::drawIcons(QPainter *painter, const QRect &r, bool mouseOver, bool rtl, bool iconMode, const QModelIndex &index) const
{
    double opacity=painter->opacity();
    if (!mouseOver) {
        painter->setOpacity(opacity*0.2);
    }

    QRect actionRect=calcActionRect(rtl, iconMode, r);

    if (act1) {
        QPixmap pix=act1->icon().pixmap(QSize(constActionIconSize, constActionIconSize));
        if (!pix.isNull() && actionRect.width()>=pix.width()/* && r.x()>=0 && r.y()>=0*/) {
            drawBgnd(painter, actionRect);
            painter->drawPixmap(actionRect.x()+(actionRect.width()-pix.width())/2,
                                actionRect.y()+(actionRect.height()-pix.height())/2, pix);
        }
    }

    if (act1 && act2) {
        adjustActionRect(rtl, iconMode, actionRect);
        QPixmap pix=act2->icon().pixmap(QSize(constActionIconSize, constActionIconSize));
        if (!pix.isNull() && actionRect.width()>=pix.width()/* && r.x()>=0 && r.y()>=0*/) {
            drawBgnd(painter, actionRect);
            painter->drawPixmap(actionRect.x()+(actionRect.width()-pix.width())/2,
                                actionRect.y()+(actionRect.height()-pix.height())/2, pix);
        }
    }

    if (act1 && act2 && toggle) {
        QString iconName=index.data(ItemView::Role_ToggleIconName).toString();
        if (!iconName.isEmpty()) {
            adjustActionRect(rtl, iconMode, actionRect);
            QPixmap pix=QIcon::fromTheme(iconName).pixmap(QSize(constActionIconSize, constActionIconSize));
            if (!pix.isNull() && actionRect.width()>=pix.width()/* && r.x()>=0 && r.y()>=0*/) {
                drawBgnd(painter, actionRect);
                painter->drawPixmap(actionRect.x()+(actionRect.width()-pix.width())/2,
                                    actionRect.y()+(actionRect.height()-pix.height())/2, pix);
            }
        }
    }
    if (!mouseOver) {
        painter->setOpacity(opacity);
    }
}

