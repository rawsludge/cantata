/*
 * Cantata
 *
 * Copyright (c) 2011-2014 Craig Drummond <craig.p.drummond@gmail.com>
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

#ifndef SETTINGS_H
#define SETTINGS_H

#include <QDateTime>
#ifdef ENABLE_KDE_SUPPORT
#include <KDE/KGlobal>
#include <KDE/KConfig>
#include <KDE/KConfigGroup>
namespace KWallet {
class Wallet;
}
#else
#include <QSettings>
#endif
#include "config.h"
#include "mpdconnection.h"

#ifdef ENABLE_KDE_SUPPORT
#define CFG_GET_STRING(CFG, KEY, DEF)     (CFG.readEntry(KEY, QString(DEF)))
#define CFG_GET_STRINGLIST(CFG, KEY, DEF) (CFG.readEntry(KEY, DEF))
#define CFG_GET_BOOL(CFG, KEY, DEF)       (CFG.readEntry(KEY, DEF))
#define CFG_GET_INT(CFG, KEY, DEF)        (CFG.readEntry(KEY, DEF))
#define CFG_GET_BYTE_ARRAY(CFG, KEY)      (CFG.readEntry(KEY, QByteArray()))
#define CFG_GET_SIZE(CFG, KEY)            (CFG.readEntry(KEY, QSize()))
#define CFG_GET_DATE_TIME(CFG, KEY)       (CFG.readEntry(KEY, QDateTime()))
#define CFG_SET_VALUE(CFG, KEY, V)        (CFG.writeEntry(KEY, V))
#define HAS_GROUP(GRP)                    (KGlobal::config()->hasGroup(GRP))
#define REMOVE_GROUP(GRP)                 (KGlobal::config()->deleteGroup(GRP))
#define REMOVE_ENTRY(KEY)                 (cfg.deleteEntry(KEY))
#define GET_STRING(KEY, DEF)              CFG_GET_STRING(cfg, KEY, DEF)
#define GET_STRINGLIST(KEY, DEF)          CFG_GET_STRINGLIST(cfg, KEY, DEF)
#define GET_BOOL(KEY, DEF)                CFG_GET_BOOL(cfg, KEY, DEF)
#define GET_INT(KEY, DEF)                 CFG_GET_INT(cfg, KEY, DEF)
#define GET_BYTE_ARRAY(KEY)               CFG_GET_BYTE_ARRAY(cfg, KEY)
#define GET_SIZE(KEY)                     CFG_GET_SIZE(cfg, KEY)
#define GET_DATE_TIME(KEY)                CFG_GET_DATE_TIME(cfg, KEY)
#define SET_VALUE(KEY, V)                 CFG_SET_VALUE(cfg, KEY, V)
#define HAS_ENTRY(KEY)                    (cfg.hasKey(KEY))
#define CFG_SYNC                          KGlobal::config()->sync()
#else
#define GET_STRING(KEY, DEF)     (cfg.contains(KEY) ? cfg.value(KEY).toString() : QString(DEF))
#define GET_STRINGLIST(KEY, DEF) (cfg.contains(KEY) ? cfg.value(KEY).toStringList() : DEF)
#define GET_BOOL(KEY, DEF)       (cfg.contains(KEY) ? cfg.value(KEY).toBool() : DEF)
#define GET_INT(KEY, DEF)        (cfg.contains(KEY) ? cfg.value(KEY).toInt() : DEF)
#define GET_BYTE_ARRAY(KEY)      (cfg.value(KEY).toByteArray())
#define GET_SIZE(KEY)            (cfg.contains(KEY) ? cfg.value(KEY).toSize() : QSize())
#define GET_DATE_TIME(KEY)       (cfg.contains(KEY) ? cfg.value(KEY).toDateTime() : QDateTime())
#define SET_VALUE(KEY, V)        (cfg.setValue(KEY, V))
#define HAS_GROUP(GRP)           (-1!=cfg.childGroups().indexOf(GRP))
#define REMOVE_GROUP(GRP)        (cfg.remove(GRP))
#define REMOVE_ENTRY(KEY)        (cfg.remove(KEY))
#define HAS_ENTRY(KEY)           (cfg.contains(KEY))
#define CFG_SYNC                 cfg.sync()
#endif

class QTimer;

class Settings : public QObject
{
    Q_OBJECT

public:
    enum Constants
    {
        MinFade     = 400,
        MaxFade     = 4000,
        DefaultFade = 2000
    };

    enum StartupState
    {
        SS_ShowMainWindow,
        SS_HideMainWindow,
        SS_Previous
    };

    static Settings *self();

    Settings();
    ~Settings();

    QString currentConnection();
    MPDConnectionDetails connectionDetails(const QString &name=Settings::self()->currentConnection());
    QList<MPDConnectionDetails> allConnections();
    bool showPlaylist();
    bool showFullScreen();
    QByteArray headerState(const QString &key);
    QByteArray splitterState();
    bool splitterAutoHide();
    QSize mainWindowSize();
    QSize mainWindowCollapsedSize();
    bool useSystemTray();
    bool minimiseOnClose();
    bool showPopups();
    bool stopOnExit();
    bool stopDynamizerOnExit();
    bool storeCoversInMpdDir();
    bool storeLyricsInMpdDir();
    bool storeStreamsInMpdDir();
    bool storeBackdropsInMpdDir();
    int libraryView();
    int albumsView();
    int folderView();
    int playlistsView();
    int streamsView();
    int onlineView();
    bool libraryArtistImage();
    int libraryCoverSize();
    int albumsCoverSize();
    int albumSort();
    int sidebar();
    bool libraryYear();
    bool groupSingle();
    bool groupMultiple();
    bool useComposer();
    QStringList lyricProviders();
    QStringList wikipediaLangs();
    bool wikipediaIntroOnly();
    int contextBackdrop();
    int contextBackdropOpacity();
    int contextBackdropBlur();
    QString contextBackdropFile();
    bool contextDarkBackground();
    int contextZoom();
    QString contextSlimPage();
    QByteArray contextSplitterState();
    bool contextAlwaysCollapsed();
    QString page();
    QStringList hiddenPages();
    #ifndef ENABLE_KDE_SUPPORT
    QString mediaKeysIface();
    #endif
    #ifdef ENABLE_DEVICES_SUPPORT
    bool overwriteSongs();
    bool showDeleteAction();
    int devicesView();
    #endif
    int searchView();
    int version();
    int stopFadeDuration();
    int httpAllocatedPort();
    QString httpInterface();
    bool alwaysUseHttp();
    bool playQueueGrouped();
    bool playQueueAutoExpand();
    bool playQueueStartClosed();
    bool playQueueScroll();
    int playQueueBackground();
    int playQueueBackgroundOpacity();
    int playQueueBackgroundBlur();
    QString playQueueBackgroundFile();
    bool playQueueConfirmClear();
    bool playListsStartClosed();
    #ifdef ENABLE_HTTP_STREAM_PLAYBACK
    bool playStream();
    #endif
    #if defined CDDB_FOUND || defined MUSICBRAINZ5_FOUND
    bool cdAuto();
    bool paranoiaFull();
    bool paranoiaNeverSkip();
    #endif
    #if defined CDDB_FOUND && defined MUSICBRAINZ5_FOUND
    bool useCddb();
    #endif
    #ifdef CDDB_FOUND
    QString cddbHost();
    int cddbPort();
    #endif
    bool forceSingleClick();
    bool startHidden();
    bool monoSidebarIcons();
    bool showTimeRemaining();
    QStringList hiddenStreamCategories();
    QStringList hiddenOnlineProviders();
    #ifndef Q_OS_WIN32
    bool inhibitSuspend();
    #endif
    int rssUpdate();
    QDateTime lastRssUpdate();
    QString podcastDownloadPath();
    bool podcastAutoDownload();
    int maxCoverFindPerIteration();
    int maxCoverUpdatePerIteration();
    QStringList cueFileCodecs();
    bool networkAccessEnabled();
    int volumeStep();
    StartupState startupState();
    int undoSteps();
    QString searchCategory();
    bool cacheScaledCovers();
    bool fetchCovers();
    int mpdPoll();
    int mpdListSize();
    #ifndef ENABLE_KDE_SUPPORT
    QString lang();
    #endif
    bool alwaysUseLsInfo();

    void removeConnectionDetails(const QString &v);
    void saveConnectionDetails(const MPDConnectionDetails &v);
    void saveCurrentConnection(const QString &v);
    void saveShowPlaylist(bool v);
    void saveShowFullScreen(bool v);
    void saveStopOnExit(bool v);
    void saveStopDynamizerOnExit(bool v);
    void saveHeaderState(const QString &key, const QByteArray &v);
    void saveSplitterState(const QByteArray &v);
    void saveSplitterAutoHide(bool v);
    void saveMainWindowSize(const QSize &v);
    void saveMainWindowCollapsedSize(const QSize &v);
    void saveUseSystemTray(bool v);
    void saveMinimiseOnClose(bool v);
    void saveShowPopups(bool v);
    void saveStoreCoversInMpdDir(bool v);
    void saveStoreLyricsInMpdDir(bool v);
    void saveStoreStreamsInMpdDir(bool v);
    void saveStoreBackdropsInMpdDir(bool v);
    void saveLibraryView(int v);
    void saveAlbumsView(int v);
    void saveFolderView(int v);
    void savePlaylistsView(int v);
    void saveStreamsView(int v);
    void saveOnlineView(int v);
    void saveLibraryArtistImage(bool v);
    void saveLibraryCoverSize(int v);
    void saveAlbumsCoverSize(int v);
    void saveAlbumSort(int v);
    void saveSidebar(int v);
    void saveLibraryYear(bool v);
    void saveGroupSingle(bool v);
    void saveGroupMultiple(bool v);
    void saveUseComposer(bool v);
    void saveLyricProviders(const QStringList &v);
    void saveWikipediaLangs(const QStringList &v);
    void saveWikipediaIntroOnly(bool v);
    void saveContextBackdrop(int v);
    void saveContextBackdropOpacity(int v);
    void saveContextBackdropBlur(int v);
    void saveContextBackdropFile(const QString &v);
    void saveContextDarkBackground(bool v);
    void saveContextZoom(int v);
    void saveContextSlimPage(const QString &v);
    void saveContextSplitterState(const QByteArray &v);
    void saveContextAlwaysCollapsed(bool v);
    void savePage(const QString &v);
    void saveHiddenPages(const QStringList &v);
    #ifndef ENABLE_KDE_SUPPORT
    void saveMediaKeysIface(const QString &v);
    #endif
    #ifdef ENABLE_DEVICES_SUPPORT
    void saveOverwriteSongs(bool v);
    void saveShowDeleteAction(bool v);
    void saveDevicesView(int v);
    #endif
    void saveSearchView(int v);
    void saveStopFadeDuration(int v);
    void saveHttpAllocatedPort(int v);
    void saveHttpInterface(const QString &v);
    void savePlayQueueGrouped(bool v);
    void savePlayQueueAutoExpand(bool v);
    void savePlayQueueStartClosed(bool v);
    void savePlayQueueScroll(bool v);
    void savePlayQueueBackground(int v);
    void savePlayQueueBackgroundOpacity(int v);
    void savePlayQueueBackgroundBlur(int v);
    void savePlayQueueBackgroundFile(const QString &v);
    void savePlayQueueConfirmClear(bool v);
    void savePlayListsStartClosed(bool v);
    #ifdef ENABLE_HTTP_STREAM_PLAYBACK
    void savePlayStream(bool v);
    #endif
    #if defined CDDB_FOUND || defined MUSICBRAINZ5_FOUND
    void saveCdAuto(bool v);
    void saveParanoiaFull(bool v);
    void saveParanoiaNeverSkip(bool v);
    #endif
    #if defined CDDB_FOUND && defined MUSICBRAINZ5_FOUND
    void saveUseCddb(bool v);
    #endif
    #ifdef CDDB_FOUND
    void saveCddbHost(const QString &v);
    void saveCddbPort(int v);
    #endif
    void saveForceSingleClick(bool v);
    void saveStartHidden(bool v);
    void saveMonoSidebarIcons(bool v);
    void saveShowTimeRemaining(bool v);
    void saveHiddenStreamCategories(const QStringList &v);
    void saveHiddenOnlineProviders(const QStringList &v);
    #ifndef Q_OS_WIN32
    void saveInhibitSuspend(bool v);
    #endif
    void saveRssUpdate(int v);
    void saveLastRssUpdate(const QDateTime &v);
    void savePodcastDownloadPath(const QString &v);
    void savePodcastAutoDownload(bool v);
    void saveStartupState(int v);
    void saveSearchCategory(const QString &v);
    void saveCacheScaledCovers(bool v);
    void saveFetchCovers(bool v);
    #ifndef ENABLE_KDE_SUPPORT
    void saveLang(const QString &v);
    #endif
    void save(bool force=false);
    #if defined ENABLE_KDE_SUPPORT && defined ENABLE_KWALLET
    bool openWallet();
    #else
    QString iconTheme();
    #endif
    int id3v2Version();

    bool firstRun() const { return isFirstRun; }

private Q_SLOTS:
    void actualSave();

private:
    bool isFirstRun;
    bool modified;
    QTimer *timer;
    int ver;
    #ifdef ENABLE_KDE_SUPPORT
    KConfigGroup cfg;
    #ifdef ENABLE_KWALLET
    KWallet::Wallet *wallet;
    #endif
    #else
    QSettings cfg;
    #endif
};

#endif