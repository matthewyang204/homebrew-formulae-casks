# homebrew-formulae-casks

My own formulae and casks for Homebrew.

To install the formulae and casks in this tap, please tap it with the following command:

```sh
brew tap matthewyang204/homebrew-formulae-casks && brew trust matthewyang204/formulae-casks
```

# Index of Formulae

**1. custom-clear**

My custom `clear` program for macOS, part of my collection of scripts. Check it out at the repo [page](https://github.com/matthewyang204/scripts).

**2. dproc**

A basic CLI data processor, designed to be fed data and output data directly from the command line. Check it out at the repo [page](https://github.com/matthewyang204/dproc).

**3. dproc GUI**

The GUI for dproc. Highly experimental; the formula has currently failed all installs attempted on my own macOS servers.

**4. fdk-aac**

A temporary placeholder formula for fdk-aac. Check out the upstream repo [page](https://github.com/mstorsjo/fdk-aac).

**5. genignore**

@regarager's `genignore`. It is a utility for setting up `.gitignore` files. The homepage can be checked out [here](https://github.com/matthewyang204/genignore).

**6. icu4c 73**

This is required for the Qt 6.5 formula in this tap. Please install it manually if qmake crashes on run.

**7. libmysolvers**

Matthew Yang's Solvers Library. Check it out at the repo [page](https://github.com/matthewyang204/libmysolvers). Please note that this is a rolling-release library, and must be installed with `--HEAD` and upgraded with `--fetch-HEAD`.

**8. neofetch**

A maintained version of the now-discontinued official Homebrew `neofetch`. It is made by @suparious.

**9. Qt 6.5**

This is the Qt 6.5 formula from back in the Homebrew commit history, here for users who need it for specific projects.

# Index of Casks

**1. GStreamer Development**

The GStreamer development package. Cask name is `gstreamer-development`.

**2. GStreamer Runtime**

The GStreamer runtime package. Cask name is `gstreamer-runtime`.

**3. Michael Villar Timer**

Michael Villar's Timer application. Cask name is `michaelvillar-timer`. Check it out at the repo [page](https://github.com/michaelvillar/timer-app).

**4. Notepad==**

My text editor. Cask name is `notepadee`. You can check it out [here](https://github.com/matthewyang204/NotepadEE).

**5. qBittorrent**

A peer-to-peer BitTorrent client. Cask name is `qbittorrent`. You can check it out [here](https://www.qbittorrent.org/).

**6. Schemix**

My fork of Schemix, a cross-platform note-taking software for engineers and scientists. Cask name is `schemix`. You can check it out [here](https://github.com/matthewyang204/Schemix).

**7. Wine Stable**

The current stable Wine package from Gcenx's macOS Wine builds. Cask name is `wine-stable`. Check out the official GitHub page [here](https://github.com/gcenx/macOS_Wine_builds).

**8. Wine Stable (@9.0)**

The 9.0 version of the official WineHQ Wine packages, made by Gcenx. Cask name is `wine-stable@9.0`. Check out the official GitHub page [here](https://github.com/gcenx/macOS_Wine_builds). You can also download the last compile of Wine 9.0 [here](https://github.com/Gcenx/macOS_Wine_builds/releases/tag/9.0_3).

**9. Wine Devel**

The WineHQ development build, made by Gcenx. Cask name is `wine@devel`. Check out the official GitHub page [here](https://github.com/gcenx/macOS_Wine_builds).

**10. Wine Staging**

The WineHQ staging build, made by Gcenx. Cask name is `wine@staging`. Check out the official GitHub page [here](https://github.com/gcenx/macOS_Wine_builds).
