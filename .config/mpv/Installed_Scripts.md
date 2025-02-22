# List of Installed mpv Scripts

1. **mpv-Utility-Scripts**
   - *Description*: This repository houses a collection of scripts designed for the mpv media player. To integrate a script into your mpv setup, download the desired script file into your `mpv/scripts/` directory. For scripts with customizable settings, also download the related configuration file into your `mpv/script-opts/` directory.

   - *Scripts available in this repository:*
     - SmartSkip
     - SmartCopyPaste
     - SmartCopyPaste_II
     - SimpleHistory
     - SimpleBookmark
     - SimpleUndo
     - UndoRedo

   - *GitHub Repository:* [Eisa01/mpv-scripts](https://github.com/Eisa01/mpv-scripts)


2. **uosc**
   - *Description*: Proximity-Based UI for MPV.

   - *Features:*
     - UI elements dynamically hide/show based on cursor proximity for complete control.
     - Minimize timeline into a discrete progress bar when unused.
     - Build customizable context menus with nesting support in your `input.conf` file.
     - Fast and efficient thumbnails with thumbfast integration.
     - UIs for subtitle/audio/video track selection, downloading subtitles, loading external subtitles, stream quality selection, and quick navigation.
     - Mouse scroll wheel functionality:
     - Timeline: Seek by `timeline_step` seconds per scroll.
     - Volume bar: Change volume by `volume_step` per scroll.
     - Speed bar: Change speed by `speed_step` per scroll.
     - Hovering video with no UI widget: Follows your configured wheel bindings from `input.conf`.
     - Right-click on volume or speed elements to reset them.
     - Transform chapters into timeline ranges.
     - Numerous options and commands for key bindings.

   - *GitHub Repository:* [tomasklaen/uosc](https://github.com/tomasklaen/uosc)

3. **thumbfast**
   - Description: thumbfast is a high-performance on-the-fly thumbnailer designed for use with the mpv media player. It doesn't display thumbnails independently but is intended to be used in conjunction with a UI script that calls thumbfast.

   - *GitHub Repository:* [po5/thumbfast](https://github.com/po5/thumbfast)

4. **mpv-playlistmanager**
   - Description: Mpv lua script to create and manage playlists.This script allows you to see and interact with your playlist in an intuitive way. The key features are removing, reordering and playing files. Additional features include resolving url titles, stripping filenames according to patterns and creating/saving/shuffling/sorting playlists.

   - *GitHub Repository:* [mpv-playlistmanager](https://github.com/jonniek/mpv-playlistmanager)

 5. **mpv-file-browser**
      - Description: This script allows users to browse and open files and folders entirely from within mpv. The script uses nothing outside the mpv API, so should work identically on all platforms. The browser can move up and down directories, start playing files and folders, or add them to the queue.By default only file types compatible with mpv will be shown, but this can be changed in the config file.
      - *GitHub Repository:* [mpv-file-browser](https://github.com/CogentRedTester/mpv-file-browser)

