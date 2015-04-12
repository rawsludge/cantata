Cantata is a graphical client for MPD. It contains the following features:

  1. Support for Qt4, Qt5, KDE, MacOSX, Windows, and Ubuntu Touch builds.
  1. Multiple MPD collections.
  1. Highly customisable layout.
  1. Songs grouped by album in play queue.
  1. Context view to show artist, album, and song information of current track.
  1. Simple tag editor.
  1. File organizer - use tags to organize files and folders.
  1. Ability to calculate ReplyGain tags. (Linux only, and if relevant libraries  installed)
  1. Dynamic playlists.
  1. Online services; Jamendo, Magnatune, SoundCloud, and Podcasts
  1. Radio stream support - with the ability to search for streams via TuneIn and ShoutCast.
  1. USB-Mass-Storage and MTP device support. (Linux only, and if relevant  libraries installed)
  1. Audio CD ripping and playback. (Linux only, and if relevant libraries installed)
  1. Playback of non-MPD songs, via simple in-built HTTP server.
  1. MPRISv2 DBUS interface.
  1. Support for KDE global shortcuts (KDE builds), GNOME media keys  (Linux only), and generic media keys (via Qxt support)
  1. Ubuntu/ambiance theme integration - including dragging of window via toolbar.
  1. Basic support for touch-style interface (views are made 'flickable')
  1. Scrobbling.
  1. Ratings support.

Cantata started off as a fork of QtMPC, mainly to provide better KDE integration - by using KDE libraries/classes wherever possible. However, the code (and user interface) is now **very** different to that of QtMPC, and both KDE and Qt (Linux) builds have the same feature set. (Windows builds lack; ReplyGain, devices, and local dynamic playlists)


Cantata has the following views accessible via its sidebar:

  1. Play Queue - shows the current active MPD playlist. This is not placed in the sidebar by default, and instead lives to the right of the sidebar. However, if you wish it can be placed in the sidebar.
  1. Library - sorted by Album Artist (or Artist if Album Artist not set), Album, and finally Track.
  1. Albums - displays grid of covers, sorted by Album Artist or title.
  1. Folders - displays MPDs virtual filesystem. (This view is hidden by default)
  1. Playlists
  1. Dynamic - dynamic playlists.
  1. Streams - allows saving of internet radio URLs, listing stations by providers, and searching for stations via TuneIn, ShoutCast, or Dirble.
  1. Online - Jamendo, Magnatune, SoundCloud, and Podcasts
  1. Devices - enables copying from/to USB-Mass-Storage (UMS) and MTP devices, and ripping AudioCDs
  1. Search - perform searches on MPD host. (This view is hidden by default)
  1. Info - displays artist, album, and track (lyrics, wikipedia, and metadata) information. This is not placed in the sidebar by default, and instead has a toggle button in the main toolbar.  However, if you wish it can be placed in the sidebar.