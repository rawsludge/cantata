!define APPNAME "@WINDOWS_APP_NAME@"
!define COMPANYNAME "@WINDOWS_COMPANY_NAME@"
!define DESCRIPTION "MPD Client"
!define VERSIONMAJOR @CPACK_PACKAGE_VERSION_MAJOR@
!define VERSIONMINOR @CPACK_PACKAGE_VERSION_MINOR@
!define VERSIONBUILD @CPACK_PACKAGE_VERSION_PATCH@
#!define HELPURL "http://..." # "Support Information" link
#!define UPDATEURL "http://..." # "Product Updates" link
!define ABOUTURL "http://cantata.googlecode.com" # "Publisher" link
 
RequestExecutionLevel admin

SetCompressor /SOLID lzma
!include "MUI2.nsh"
 
InstallDir "$PROGRAMFILES\@WINDOWS_APP_NAME@"
# This will be in the installer/uninstaller's title bar
Name "@WINDOWS_APP_NAME@"
Icon "cantata.ico"
outFile "Cantata-@CANTATA_VERSION_FULL@-Setup.exe"

!define MUI_ABORTWARNING
!define MUI_ICON "cantata.ico"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "LICENSE.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English" ;first language is the default language
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Esperanto"

section "install"
    # Files for the install directory - to build the installer, these should be in the same directory as the install script (this file)
    setOutPath $INSTDIR
    # Files added here should be removed by the uninstaller (see section "uninstall")
    file "cantata.exe"
    file "Cantata License (GPL V3).txt"
    file "Cantata README.txt"
    file "zlib1.dll"
    file "libgcc_s_dw2-1.dll"
    file "libtag.dll"
    file "mingwm10.dll"
    file "Qt4 README.txt"
    file "QtCore4.dll"
    file "QtGui4.dll"
    file "Qt License (LGPL V2).txt"
    file "QtNetwork4.dll"
    file "QtSvg4.dll"
    file "QtXml4.dll"
    file "TagLib README.txt"
    setOutPath $INSTDIR\config
    file "config\lyrics_providers.xml"
    file "config\podcast_directories.xml"
    file "config\scrobblers.xml"
    file "config\tag_fixes.xml"
    file "config\weblinks.xml"
    setOutPath $INSTDIR\helpers
    file "helpers\cantata-tags.exe"
    setOutPath $INSTDIR\iconengines
    file "iconengines\qsvgicon4.dll"
    setOutPath $INSTDIR\icons
    file "icons\bbc.svg"
    file "icons\cbc.svg"
    file "icons\npr.svg"
    file "icons\podcasts.png"
    file "icons\soundcloud.png"
    file "icons\stream.png"
    setOutPath $INSTDIR\icons\oxygen
    file "icons\oxygen\index.theme"
    file "icons\oxygen\Oxygen License (Creative Common Attribution-ShareAlike 3.0).html"
    file "icons\oxygen\Oxygen README.txt"
    setOutPath $INSTDIR\icons\oxygen\128x128\categories
    file "icons\oxygen\128x128\categories\applications-internet.png"
    setOutPath $INSTDIR\icons\oxygen\128x128\devices
    file "icons\oxygen\128x128\devices\media-optical.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\actions
    file "icons\oxygen\16x16\actions\application-exit.png"
    file "icons\oxygen\16x16\actions\bookmark-new.png"
    file "icons\oxygen\16x16\actions\configure.png"
    file "icons\oxygen\16x16\actions\dialog-cancel.png"
    file "icons\oxygen\16x16\actions\dialog-close.png"
    file "icons\oxygen\16x16\actions\dialog-ok.png"
    file "icons\oxygen\16x16\actions\document-edit.png"
    file "icons\oxygen\16x16\actions\document-export.png"
    file "icons\oxygen\16x16\actions\document-import.png"
    file "icons\oxygen\16x16\actions\document-new.png"
    file "icons\oxygen\16x16\actions\document-open.png"
    file "icons\oxygen\16x16\actions\document-save-as.png"
    file "icons\oxygen\16x16\actions\document-save.png"
    file "icons\oxygen\16x16\actions\edit-clear-list.png"
    file "icons\oxygen\16x16\actions\edit-clear-locationbar-ltr.png"
    file "icons\oxygen\16x16\actions\edit-clear-locationbar-rtl.png"
    file "icons\oxygen\16x16\actions\edit-delete.png"
    file "icons\oxygen\16x16\actions\edit-find.png"
    file "icons\oxygen\16x16\actions\edit-rename.png"
    file "icons\oxygen\16x16\actions\folder-sync.png"
    file "icons\oxygen\16x16\actions\go-down.png"
    file "icons\oxygen\16x16\actions\go-next.png"
    file "icons\oxygen\16x16\actions\go-previous.png"
    file "icons\oxygen\16x16\actions\go-up.png"
    file "icons\oxygen\16x16\actions\list-add.png"
    file "icons\oxygen\16x16\actions\list-remove.png"
    file "icons\oxygen\16x16\actions\media-playback-pause.png"
    file "icons\oxygen\16x16\actions\media-playback-start.png"
    file "icons\oxygen\16x16\actions\media-playback-stop.png"
    file "icons\oxygen\16x16\actions\media-skip-backward.png"
    file "icons\oxygen\16x16\actions\media-skip-forward.png"
    file "icons\oxygen\16x16\actions\process-stop.png"
    file "icons\oxygen\16x16\actions\speaker.png"
    file "icons\oxygen\16x16\actions\tools-wizard.png"
    file "icons\oxygen\16x16\actions\view-fullscreen.png"
    file "icons\oxygen\16x16\actions\view-media-artist.png"
    file "icons\oxygen\16x16\actions\view-media-playlist.png"
    file "icons\oxygen\16x16\actions\view-refresh.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\apps
    file "icons\oxygen\16x16\apps\cantata.png"
    file "icons\oxygen\16x16\apps\preferences-desktop-keyboard.png"
    file "icons\oxygen\16x16\apps\system-file-manager.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\categories
    file "icons\oxygen\16x16\categories\applications-internet.png"
    file "icons\oxygen\16x16\categories\preferences-other.png"
    file "icons\oxygen\16x16\categories\preferences-system-network.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\devices
    file "icons\oxygen\16x16\devices\media-optical.png"
    file "icons\oxygen\16x16\devices\multimedia-player.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\mimetypes
    file "icons\oxygen\16x16\mimetypes\audio-x-generic.png"
    file "icons\oxygen\16x16\mimetypes\inode-directory.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\places
    file "icons\oxygen\16x16\places\bookmarks.png"
    file "icons\oxygen\16x16\places\document-multiple.png"
    file "icons\oxygen\16x16\places\favorites.png"
    file "icons\oxygen\16x16\places\network-server.png"
    file "icons\oxygen\16x16\places\server-database.png"
    setOutPath $INSTDIR\icons\oxygen\16x16\status
    file "icons\oxygen\16x16\status\dialog-error.png"
    file "icons\oxygen\16x16\status\dialog-information.png"
    file "icons\oxygen\16x16\status\dialog-warning.png"
    file "icons\oxygen\16x16\status\media-playlist-shuffle.png"
    file "icons\oxygen\16x16\status\object-locked.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\actions
    file "icons\oxygen\22x22\actions\application-exit.png"
    file "icons\oxygen\22x22\actions\bookmark-new.png"
    file "icons\oxygen\22x22\actions\bookmarks.png"
    file "icons\oxygen\22x22\actions\configure.png"
    file "icons\oxygen\22x22\actions\dialog-cancel.png"
    file "icons\oxygen\22x22\actions\dialog-close.png"
    file "icons\oxygen\22x22\actions\dialog-ok.png"
    file "icons\oxygen\22x22\actions\document-edit.png"
    file "icons\oxygen\22x22\actions\document-export.png"
    file "icons\oxygen\22x22\actions\document-import.png"
    file "icons\oxygen\22x22\actions\document-new.png"
    file "icons\oxygen\22x22\actions\document-open.png"
    file "icons\oxygen\22x22\actions\document-save-as.png"
    file "icons\oxygen\22x22\actions\document-save.png"
    file "icons\oxygen\22x22\actions\edit-clear-list.png"
    file "icons\oxygen\22x22\actions\edit-clear-locationbar-ltr.png"
    file "icons\oxygen\22x22\actions\edit-clear-locationbar-rtl.png"
    file "icons\oxygen\22x22\actions\edit-delete.png"
    file "icons\oxygen\22x22\actions\edit-find.png"
    file "icons\oxygen\22x22\actions\edit-rename.png"
    file "icons\oxygen\22x22\actions\folder-sync.png"
    file "icons\oxygen\22x22\actions\go-down.png"
    file "icons\oxygen\22x22\actions\go-next.png"
    file "icons\oxygen\22x22\actions\go-previous.png"
    file "icons\oxygen\22x22\actions\go-up.png"
    file "icons\oxygen\22x22\actions\list-add.png"
    file "icons\oxygen\22x22\actions\list-remove.png"
    file "icons\oxygen\22x22\actions\media-playback-pause.png"
    file "icons\oxygen\22x22\actions\media-playback-start.png"
    file "icons\oxygen\22x22\actions\media-playback-stop.png"
    file "icons\oxygen\22x22\actions\media-skip-backward.png"
    file "icons\oxygen\22x22\actions\media-skip-forward.png"
    file "icons\oxygen\22x22\actions\process-stop.png"
    file "icons\oxygen\22x22\actions\speaker.png"
    file "icons\oxygen\22x22\actions\tools-wizard.png"
    file "icons\oxygen\22x22\actions\view-fullscreen.png"
    file "icons\oxygen\22x22\actions\view-media-artist.png"
    file "icons\oxygen\22x22\actions\view-media-playlist.png"
    file "icons\oxygen\22x22\actions\view-refresh.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\apps
    file "icons\oxygen\22x22\apps\cantata.png"
    file "icons\oxygen\22x22\apps\preferences-desktop-keyboard.png"
    file "icons\oxygen\22x22\apps\system-file-manager.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\categories
    file "icons\oxygen\22x22\categories\applications-internet.png"
    file "icons\oxygen\22x22\categories\preferences-other.png"
    file "icons\oxygen\22x22\categories\preferences-system-network.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\devices
    file "icons\oxygen\22x22\devices\media-optical.png"
    file "icons\oxygen\22x22\devices\multimedia-player.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\mimetypes
    file "icons\oxygen\22x22\mimetypes\audio-x-generic.png"
    file "icons\oxygen\22x22\mimetypes\inode-directory.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\places
    file "icons\oxygen\22x22\places\bookmarks.png"
    file "icons\oxygen\22x22\places\document-multiple.png"
    file "icons\oxygen\22x22\places\favorites.png"
    file "icons\oxygen\22x22\places\network-server.png"
    file "icons\oxygen\22x22\places\server-database.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\status
    file "icons\oxygen\22x22\status\dialog-error.png"
    file "icons\oxygen\22x22\status\dialog-information.png"
    file "icons\oxygen\22x22\status\dialog-warning.png"
    file "icons\oxygen\22x22\status\media-playlist-shuffle.png"
    file "icons\oxygen\22x22\status\object-locked.png"
    setOutPath $INSTDIR\icons\oxygen\22x22\apps
    file "icons\oxygen\24x24\apps\cantata.png"
    setOutPath $INSTDIR\icons\oxygen\256x256\categories
    file "icons\oxygen\256x256\categories\applications-internet.png"
    setOutPath $INSTDIR\icons\oxygen\256x256\devices
    file "icons\oxygen\256x256\devices\media-optical.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\actions
    file "icons\oxygen\32x32\actions\application-exit.png"
    file "icons\oxygen\32x32\actions\bookmark-new.png"
    file "icons\oxygen\32x32\actions\configure.png"
    file "icons\oxygen\32x32\actions\dialog-cancel.png"
    file "icons\oxygen\32x32\actions\dialog-close.png"
    file "icons\oxygen\32x32\actions\dialog-ok.png"
    file "icons\oxygen\32x32\actions\document-edit.png"
    file "icons\oxygen\32x32\actions\document-export.png"
    file "icons\oxygen\32x32\actions\document-import.png"
    file "icons\oxygen\32x32\actions\document-new.png"
    file "icons\oxygen\32x32\actions\document-open.png"
    file "icons\oxygen\32x32\actions\document-save-as.png"
    file "icons\oxygen\32x32\actions\document-save.png"
    file "icons\oxygen\32x32\actions\edit-clear-list.png"
    file "icons\oxygen\32x32\actions\edit-clear-locationbar-ltr.png"
    file "icons\oxygen\32x32\actions\edit-clear-locationbar-rtl.png"
    file "icons\oxygen\32x32\actions\edit-delete.png"
    file "icons\oxygen\32x32\actions\edit-find.png"
    file "icons\oxygen\32x32\actions\edit-rename.png"
    file "icons\oxygen\32x32\actions\folder-sync.png"
    file "icons\oxygen\32x32\actions\go-down.png"
    file "icons\oxygen\32x32\actions\go-next.png"
    file "icons\oxygen\32x32\actions\go-previous.png"
    file "icons\oxygen\32x32\actions\go-up.png"
    file "icons\oxygen\32x32\actions\list-add.png"
    file "icons\oxygen\32x32\actions\list-remove.png"
    file "icons\oxygen\32x32\actions\media-playback-pause.png"
    file "icons\oxygen\32x32\actions\media-playback-start.png"
    file "icons\oxygen\32x32\actions\media-playback-stop.png"
    file "icons\oxygen\32x32\actions\media-skip-backward.png"
    file "icons\oxygen\32x32\actions\media-skip-forward.png"
    file "icons\oxygen\32x32\actions\process-stop.png"
    file "icons\oxygen\32x32\actions\speaker.png"
    file "icons\oxygen\32x32\actions\tools-wizard.png"
    file "icons\oxygen\32x32\actions\view-fullscreen.png"
    file "icons\oxygen\32x32\actions\view-media-artist.png"
    file "icons\oxygen\32x32\actions\view-media-playlist.png"
    file "icons\oxygen\32x32\actions\view-refresh.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\apps
    file "icons\oxygen\32x32\apps\cantata.png"
    file "icons\oxygen\32x32\apps\preferences-desktop-keyboard.png"
    file "icons\oxygen\32x32\apps\system-file-manager.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\categories
    file "icons\oxygen\32x32\categories\applications-internet.png"
    file "icons\oxygen\32x32\categories\preferences-other.png"
    file "icons\oxygen\32x32\categories\preferences-system-network.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\devices
    file "icons\oxygen\32x32\devices\media-optical.png"
    file "icons\oxygen\32x32\devices\multimedia-player.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\mimetypes
    file "icons\oxygen\32x32\mimetypes\audio-x-generic.png"
    file "icons\oxygen\32x32\mimetypes\inode-directory.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\places
    file "icons\oxygen\32x32\places\bookmarks.png"
    file "icons\oxygen\32x32\places\document-multiple.png"
    file "icons\oxygen\32x32\places\favorites.png"
    file "icons\oxygen\32x32\places\network-server.png"
    file "icons\oxygen\32x32\places\server-database.png"
    setOutPath $INSTDIR\icons\oxygen\32x32\status
    file "icons\oxygen\32x32\status\dialog-error.png"
    file "icons\oxygen\32x32\status\dialog-information.png"
    file "icons\oxygen\32x32\status\dialog-warning.png"
    file "icons\oxygen\32x32\status\media-playlist-shuffle.png"
    file "icons\oxygen\32x32\status\object-locked.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\actions
    file "icons\oxygen\48x48\actions\bookmark-new.png"
    file "icons\oxygen\48x48\actions\view-fullscreen.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\apps
    file "icons\oxygen\48x48\apps\cantata.png"
    file "icons\oxygen\48x48\apps\preferences-desktop-keyboard.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\categories
    file "icons\oxygen\48x48\categories\applications-internet.png"
    file "icons\oxygen\48x48\categories\preferences-other.png"
    file "icons\oxygen\48x48\categories\preferences-system-network.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\devices
    file "icons\oxygen\48x48\devices\media-optical.png"
    file "icons\oxygen\48x48\devices\multimedia-player.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\places
    file "icons\oxygen\48x48\places\bookmarks.png"
    setOutPath $INSTDIR\icons\oxygen\48x48\status
    file "icons\oxygen\48x48\status\dialog-error.png"
    file "icons\oxygen\48x48\status\dialog-information.png"
    file "icons\oxygen\48x48\status\dialog-warning.png"
    file "icons\oxygen\48x48\status\media-playlist-shuffle.png"
    file "icons\oxygen\48x48\status\object-locked.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\actions
    file "icons\oxygen\64x64\actions\bookmark-new.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\apps
    file "icons\oxygen\64x64\apps\cantata.png"
    file "icons\oxygen\64x64\apps\preferences-desktop-keyboard.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\categories
    file "icons\oxygen\64x64\categories\applications-internet.png"
    file "icons\oxygen\64x64\categories\preferences-other.png"
    file "icons\oxygen\64x64\categories\preferences-system-network.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\devices
    file "icons\oxygen\64x64\devices\media-optical.png"
    file "icons\oxygen\64x64\devices\multimedia-player.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\places
    file "icons\oxygen\64x64\places\bookmarks.png"
    setOutPath $INSTDIR\icons\oxygen\64x64\status
    file "icons\oxygen\64x64\status\dialog-error.png"
    file "icons\oxygen\64x64\status\dialog-information.png"
    file "icons\oxygen\64x64\status\dialog-warning.png"
    setOutPath $INSTDIR\icons\oxygen\scalable\apps
    file "icons\oxygen\scalable\apps\cantata.svg"
    setOutPath $INSTDIR\imageformats
    file "imageformats\qjpeg4.dll"
    file "imageformats\qsvg4.dll"
    setOutPath $INSTDIR\translations
    file "translations\cantata_cs.qm"
    file "translations\cantata_de.qm"
    file "translations\cantata_en_GB.qm"
    file "translations\cantata_es.qm"
    file "translations\cantata_hu.qm"
    file "translations\cantata_ko.qm"
    file "translations\cantata_pl.qm"
    file "translations\cantata_ru.qm"
    file "translations\cantata_zh_CN.qm"
    file "translations\qt_ar.qm"
    file "translations\qt_cs.qm"
    file "translations\qt_da.qm"
    file "translations\qt_de.qm"
    file "translations\qt_es.qm"
    file "translations\qt_fa.qm"
    file "translations\qt_fr.qm"
    file "translations\qt_gl.qm"
    file "translations\qt_he.qm"
    file "translations\qt_hu.qm"
    file "translations\qt_ja.qm"
    file "translations\qt_ko.qm"
    file "translations\qt_lt.qm"
    file "translations\qt_pl.qm"
    file "translations\qt_pt.qm"
    file "translations\qt_ru.qm"
    file "translations\qt_sk.qm"
    file "translations\qt_sl.qm"
    file "translations\qt_sv.qm"
    file "translations\qt_uk.qm"
    file "translations\qt_zh_CN.qm"
    file "translations\qt_zh_TW.qm"
 
    writeUninstaller "$INSTDIR\uninstall.exe"
 
    # Start Menu
    createShortCut "$SMPROGRAMS\@WINDOWS_APP_NAME@.lnk" "$INSTDIR\cantata.exe" "" "$INSTDIR\cantata.exe"
 
    # Registry information for add/remove programs
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "DisplayName" "@WINDOWS_APP_NAME@"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "QuietUninstallString" "$\"$INSTDIR\uninstall.exe$\" /S"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "InstallLocation" "$\"$INSTDIR$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "DisplayIcon" "$\"$INSTDIR\cantata.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "Publisher" "@WINDOWS_COMPANY_NAME@"
#    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "HelpLink" "$\"${HELPURL}$\""
#    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "URLUpdateInfo" "$\"${UPDATEURL}$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "URLInfoAbout" "$\"@WINDOWS_URL@$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "DisplayVersion" "@CANTATA_VERSION_FULL@"
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "VersionMajor" @CPACK_PACKAGE_VERSION_MAJOR@
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "VersionMinor" @CPACK_PACKAGE_VERSION_MINOR@
    # There is no option for modifying or repairing the install
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "NoModify" 1
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "NoRepair" 1
    # Set the INSTALLSIZE constant (!defined at the top of this script) so Add/Remove Programs can accurately report the size
    # WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@" "EstimatedSize" ${INSTALLSIZE}
sectionEnd
 
# Uninstaller
 
section "uninstall"
    # Remove Start Menu launcher
    delete "$SMPROGRAMS\@WINDOWS_APP_NAME@.lnk"
 
    delete "$INSTDIR\cantata.exe"
    delete "$INSTDIR\Cantata README.txt"
    delete "$INSTDIR\Cantata License (GPL V3).txt"
    delete "$INSTDIR\config\lyrics_providers.xml"
    delete "$INSTDIR\config\podcast_directories.xml"
    delete "$INSTDIR\config\scrobblers.xml"
    delete "$INSTDIR\config\tag_fixes.xml"
    delete "$INSTDIR\config\weblinks.xml"
    delete "$INSTDIR\helpers\cantata-tags.exe"
    delete "$INSTDIR\iconengines\qsvgicon4.dll"
    delete "$INSTDIR\icons\bbc.svg"
    delete "$INSTDIR\icons\cbc.svg"
    delete "$INSTDIR\icons\npr.svg"
    delete "$INSTDIR\icons\podcasts.png"
    delete "$INSTDIR\icons\soundcloud.png"
    delete "$INSTDIR\icons\stream.png"
    delete "$INSTDIR\icons\oxygen\index.theme"
    delete "$INSTDIR\icons\oxygen\Oxygen License (Creative Common Attribution-ShareAlike 3.0).html"
    delete "$INSTDIR\icons\oxygen\Oxygen README.txt"
    delete "$INSTDIR\icons\oxygen\128x128\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\128x128\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\application-exit.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\bookmark-new.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\configure.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\dialog-cancel.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\dialog-close.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\dialog-ok.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-edit.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-export.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-import.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-new.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-open.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-save-as.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\document-save.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-clear-list.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-clear-locationbar-ltr.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-clear-locationbar-rtl.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-delete.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-find.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\edit-rename.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\folder-sync.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\go-down.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\go-next.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\go-previous.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\go-up.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\list-add.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\list-remove.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\media-playback-pause.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\media-playback-start.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\media-playback-stop.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\media-skip-backward.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\media-skip-forward.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\process-stop.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\speaker.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\tools-wizard.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\view-fullscreen.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\view-media-artist.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\view-media-playlist.png"
    delete "$INSTDIR\icons\oxygen\16x16\actions\view-refresh.png"
    delete "$INSTDIR\icons\oxygen\16x16\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\16x16\apps\preferences-desktop-keyboard.png"
    delete "$INSTDIR\icons\oxygen\16x16\apps\system-file-manager.png"
    delete "$INSTDIR\icons\oxygen\16x16\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\16x16\categories\preferences-other.png"
    delete "$INSTDIR\icons\oxygen\16x16\categories\preferences-system-network.png"
    delete "$INSTDIR\icons\oxygen\16x16\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\16x16\devices\multimedia-player.png"
    delete "$INSTDIR\icons\oxygen\16x16\mimetypes\audio-x-generic.png"
    delete "$INSTDIR\icons\oxygen\16x16\mimetypes\inode-directory.png"
    delete "$INSTDIR\icons\oxygen\16x16\places\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\16x16\places\document-multiple.png"
    delete "$INSTDIR\icons\oxygen\16x16\places\favorites.png"
    delete "$INSTDIR\icons\oxygen\16x16\places\network-server.png"
    delete "$INSTDIR\icons\oxygen\16x16\places\server-database.png"
    delete "$INSTDIR\icons\oxygen\16x16\status\dialog-error.png"
    delete "$INSTDIR\icons\oxygen\16x16\status\dialog-information.png"
    delete "$INSTDIR\icons\oxygen\16x16\status\dialog-warning.png"
    delete "$INSTDIR\icons\oxygen\16x16\status\media-playlist-shuffle.png"
    delete "$INSTDIR\icons\oxygen\16x16\status\object-locked.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\application-exit.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\bookmark-new.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\configure.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\dialog-cancel.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\dialog-close.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\dialog-ok.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-edit.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-export.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-import.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-new.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-open.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-save-as.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\document-save.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-clear-list.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-clear-locationbar-ltr.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-clear-locationbar-rtl.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-delete.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-find.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\edit-rename.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\folder-sync.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\go-down.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\go-next.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\go-previous.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\go-up.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\list-add.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\list-remove.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\media-playback-pause.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\media-playback-start.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\media-playback-stop.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\media-skip-backward.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\media-skip-forward.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\process-stop.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\speaker.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\tools-wizard.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\view-fullscreen.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\view-media-artist.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\view-media-playlist.png"
    delete "$INSTDIR\icons\oxygen\22x22\actions\view-refresh.png"
    delete "$INSTDIR\icons\oxygen\22x22\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\22x22\apps\preferences-desktop-keyboard.png"
    delete "$INSTDIR\icons\oxygen\22x22\apps\system-file-manager.png"
    delete "$INSTDIR\icons\oxygen\22x22\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\22x22\categories\preferences-other.png"
    delete "$INSTDIR\icons\oxygen\22x22\categories\preferences-system-network.png"
    delete "$INSTDIR\icons\oxygen\22x22\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\22x22\devices\multimedia-player.png"
    delete "$INSTDIR\icons\oxygen\22x22\mimetypes\audio-x-generic.png"
    delete "$INSTDIR\icons\oxygen\22x22\mimetypes\inode-directory.png"
    delete "$INSTDIR\icons\oxygen\22x22\places\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\22x22\places\document-multiple.png"
    delete "$INSTDIR\icons\oxygen\22x22\places\favorites.png"
    delete "$INSTDIR\icons\oxygen\22x22\places\network-server.png"
    delete "$INSTDIR\icons\oxygen\22x22\places\server-database.png"
    delete "$INSTDIR\icons\oxygen\22x22\status\dialog-error.png"
    delete "$INSTDIR\icons\oxygen\22x22\status\dialog-information.png"
    delete "$INSTDIR\icons\oxygen\22x22\status\dialog-warning.png"
    delete "$INSTDIR\icons\oxygen\22x22\status\media-playlist-shuffle.png"
    delete "$INSTDIR\icons\oxygen\22x22\status\object-locked.png"
    delete "$INSTDIR\icons\oxygen\24x24\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\256x256\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\256x256\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\application-exit.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\bookmark-new.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\configure.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\dialog-cancel.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\dialog-close.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\dialog-ok.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-edit.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-export.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-import.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-new.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-open.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-save-as.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\document-save.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-clear-list.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-clear-locationbar-ltr.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-clear-locationbar-rtl.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-delete.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-find.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\edit-rename.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\folder-sync.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\go-down.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\go-next.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\go-previous.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\go-up.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\list-add.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\list-remove.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\media-playback-pause.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\media-playback-start.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\media-playback-stop.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\media-skip-backward.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\media-skip-forward.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\process-stop.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\speaker.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\tools-wizard.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\view-fullscreen.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\view-media-artist.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\view-media-playlist.png"
    delete "$INSTDIR\icons\oxygen\32x32\actions\view-refresh.png"
    delete "$INSTDIR\icons\oxygen\32x32\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\32x32\apps\preferences-desktop-keyboard.png"
    delete "$INSTDIR\icons\oxygen\32x32\apps\system-file-manager.png"
    delete "$INSTDIR\icons\oxygen\32x32\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\32x32\categories\preferences-other.png"
    delete "$INSTDIR\icons\oxygen\32x32\categories\preferences-system-network.png"
    delete "$INSTDIR\icons\oxygen\32x32\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\32x32\devices\multimedia-player.png"
    delete "$INSTDIR\icons\oxygen\32x32\mimetypes\audio-x-generic.png"
    delete "$INSTDIR\icons\oxygen\32x32\mimetypes\inode-directory.png"
    delete "$INSTDIR\icons\oxygen\32x32\places\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\32x32\places\document-multiple.png"
    delete "$INSTDIR\icons\oxygen\32x32\places\favorites.png"
    delete "$INSTDIR\icons\oxygen\32x32\places\network-server.png"
    delete "$INSTDIR\icons\oxygen\32x32\places\server-database.png"
    delete "$INSTDIR\icons\oxygen\32x32\status\dialog-error.png"
    delete "$INSTDIR\icons\oxygen\32x32\status\dialog-information.png"
    delete "$INSTDIR\icons\oxygen\32x32\status\dialog-warning.png"
    delete "$INSTDIR\icons\oxygen\32x32\status\media-playlist-shuffle.png"
    delete "$INSTDIR\icons\oxygen\32x32\status\object-locked.png"
    delete "$INSTDIR\icons\oxygen\48x48\actions\bookmark-new.png"
    delete "$INSTDIR\icons\oxygen\48x48\actions\view-fullscreen.png"
    delete "$INSTDIR\icons\oxygen\48x48\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\48x48\apps\preferences-desktop-keyboard.png"
    delete "$INSTDIR\icons\oxygen\48x48\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\48x48\categories\preferences-other.png"
    delete "$INSTDIR\icons\oxygen\48x48\categories\preferences-system-network.png"
    delete "$INSTDIR\icons\oxygen\48x48\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\48x48\devices\multimedia-player.png"
    delete "$INSTDIR\icons\oxygen\48x48\places\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\48x48\status\dialog-error.png"
    delete "$INSTDIR\icons\oxygen\48x48\status\dialog-information.png"
    delete "$INSTDIR\icons\oxygen\48x48\status\dialog-warning.png"
    delete "$INSTDIR\icons\oxygen\48x48\status\media-playlist-shuffle.png"
    delete "$INSTDIR\icons\oxygen\48x48\status\object-locked.png"
    delete "$INSTDIR\icons\oxygen\64x64\actions\bookmark-new.png"
    delete "$INSTDIR\icons\oxygen\64x64\apps\cantata.png"
    delete "$INSTDIR\icons\oxygen\64x64\apps\preferences-desktop-keyboard.png"
    delete "$INSTDIR\icons\oxygen\64x64\categories\applications-internet.png"
    delete "$INSTDIR\icons\oxygen\64x64\categories\preferences-other.png"
    delete "$INSTDIR\icons\oxygen\64x64\categories\preferences-system-network.png"
    delete "$INSTDIR\icons\oxygen\64x64\devices\media-optical.png"
    delete "$INSTDIR\icons\oxygen\64x64\devices\multimedia-player.png"
    delete "$INSTDIR\icons\oxygen\64x64\places\bookmarks.png"
    delete "$INSTDIR\icons\oxygen\64x64\status\dialog-error.png"
    delete "$INSTDIR\icons\oxygen\64x64\status\dialog-information.png"
    delete "$INSTDIR\icons\oxygen\64x64\status\dialog-warning.png"
    delete "$INSTDIR\icons\oxygen\scalable\apps\cantata.svg"
    delete "$INSTDIR\imageformats\qjpeg4.dll"
    delete "$INSTDIR\imageformats\qsvg4.dll"
    delete "$INSTDIR\libgcc_s_dw2-1.dll"
    delete "$INSTDIR\libtag.dll"
    delete "$INSTDIR\mingwm10.dll"
    delete "$INSTDIR\Qt4 README.txt"
    delete "$INSTDIR\QtCore4.dll"
    delete "$INSTDIR\QtGui4.dll"
    delete "$INSTDIR\Qt License (LGPL V2).txt"
    delete "$INSTDIR\QtNetwork4.dll"
    delete "$INSTDIR\QtSvg4.dll"
    delete "$INSTDIR\QtXml4.dll"
    delete "$INSTDIR\TagLib README.txt"
    delete "$INSTDIR\translations\cantata_cs.qm"
    delete "$INSTDIR\translations\cantata_de.qm"
    delete "$INSTDIR\translations\cantata_en_GB.qm"
    delete "$INSTDIR\translations\cantata_es.qm"
    delete "$INSTDIR\translations\cantata_hu.qm"
    delete "$INSTDIR\translations\cantata_ko.qm"
    delete "$INSTDIR\translations\cantata_pl.qm"
    delete "$INSTDIR\translations\cantata_ru.qm"
    delete "$INSTDIR\translations\cantata_zh_CN.qm"
    delete "$INSTDIR\translations\qt_ar.qm"
    delete "$INSTDIR\translations\qt_cs.qm"
    delete "$INSTDIR\translations\qt_da.qm"
    delete "$INSTDIR\translations\qt_de.qm"
    delete "$INSTDIR\translations\qt_es.qm"
    delete "$INSTDIR\translations\qt_fa.qm"
    delete "$INSTDIR\translations\qt_fr.qm"
    delete "$INSTDIR\translations\qt_gl.qm"
    delete "$INSTDIR\translations\qt_he.qm"
    delete "$INSTDIR\translations\qt_hu.qm"
    delete "$INSTDIR\translations\qt_ja.qm"
    delete "$INSTDIR\translations\qt_ko.qm"
    delete "$INSTDIR\translations\qt_lt.qm"
    delete "$INSTDIR\translations\qt_pl.qm"
    delete "$INSTDIR\translations\qt_pt.qm"
    delete "$INSTDIR\translations\qt_ru.qm"
    delete "$INSTDIR\translations\qt_sk.qm"
    delete "$INSTDIR\translations\qt_sl.qm"
    delete "$INSTDIR\translations\qt_sv.qm"
    delete "$INSTDIR\translations\qt_uk.qm"
    delete "$INSTDIR\translations\qt_zh_CN.qm"
    delete "$INSTDIR\translations\qt_zh_TW.qm"
    delete "$INSTDIR\zlib1.dll"
 
    rmDir $INSTDIR\config
    rmDir $INSTDIR\helpers
    rmDir $INSTDIR\iconengines
    rmDir $INSTDIR\icons\oxygen\128x128\categories
    rmDir $INSTDIR\icons\oxygen\128x128\devices
    rmDir $INSTDIR\icons\oxygen\128x128
    rmDir $INSTDIR\icons\oxygen\16x16\actions
    rmDir $INSTDIR\icons\oxygen\16x16\apps
    rmDir $INSTDIR\icons\oxygen\16x16\categories
    rmDir $INSTDIR\icons\oxygen\16x16\devices
    rmDir $INSTDIR\icons\oxygen\16x16\mimetypes
    rmDir $INSTDIR\icons\oxygen\16x16\places
    rmDir $INSTDIR\icons\oxygen\16x16\status
    rmDir $INSTDIR\icons\oxygen\16x16
    rmDir $INSTDIR\icons\oxygen\22x22\actions
    rmDir $INSTDIR\icons\oxygen\22x22\apps
    rmDir $INSTDIR\icons\oxygen\22x22\categories
    rmDir $INSTDIR\icons\oxygen\22x22\devices
    rmDir $INSTDIR\icons\oxygen\22x22\mimetypes
    rmDir $INSTDIR\icons\oxygen\22x22\places
    rmDir $INSTDIR\icons\oxygen\22x22\status
    rmDir $INSTDIR\icons\oxygen\22x22\apps
    rmDir $INSTDIR\icons\oxygen\22x22
    rmDir $INSTDIR\icons\oxygen\256x256\categories
    rmDir $INSTDIR\icons\oxygen\256x256\devices
    rmDir $INSTDIR\icons\oxygen\256x256
    rmDir $INSTDIR\icons\oxygen\32x32\actions
    rmDir $INSTDIR\icons\oxygen\32x32\apps
    rmDir $INSTDIR\icons\oxygen\32x32\categories
    rmDir $INSTDIR\icons\oxygen\32x32\devices
    rmDir $INSTDIR\icons\oxygen\32x32\mimetypes
    rmDir $INSTDIR\icons\oxygen\32x32\places
    rmDir $INSTDIR\icons\oxygen\32x32\status
    rmDir $INSTDIR\icons\oxygen\32x32
    rmDir $INSTDIR\icons\oxygen\48x48\actions
    rmDir $INSTDIR\icons\oxygen\48x48\apps
    rmDir $INSTDIR\icons\oxygen\48x48\categories
    rmDir $INSTDIR\icons\oxygen\48x48\devices
    rmDir $INSTDIR\icons\oxygen\48x48\places
    rmDir $INSTDIR\icons\oxygen\48x48\status
    rmDir $INSTDIR\icons\oxygen\48x48
    rmDir $INSTDIR\icons\oxygen\64x64\actions
    rmDir $INSTDIR\icons\oxygen\64x64\apps
    rmDir $INSTDIR\icons\oxygen\64x64\categories
    rmDir $INSTDIR\icons\oxygen\64x64\devices
    rmDir $INSTDIR\icons\oxygen\64x64\places
    rmDir $INSTDIR\icons\oxygen\64x64\status
    rmDir $INSTDIR\icons\oxygen\64x64
    rmDir $INSTDIR\icons\oxygen\scalable\apps
    rmDir $INSTDIR\icons\oxygen\scalable
    rmDir $INSTDIR\icons\oxygen
    rmDir $INSTDIR\icons
    rmDir $INSTDIR\imageformats
    rmDir $INSTDIR\translations

    # Always delete uninstaller as the last action
    delete $INSTDIR\uninstall.exe
 
    # Try to remove the install directory - this will only happen if it is empty
    rmDir $INSTDIR
 
    # Remove uninstaller information from the registry
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\@WINDOWS_COMPANY_NAME@ @WINDOWS_APP_NAME@"
sectionEnd
