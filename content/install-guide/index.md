+++
title = "Install Guide"
template = "page.html"
date = 2025-11-22
updated = 2026-04-23
[extra]
header2 = true
+++

Credit to [Seres (@Seres67)](https://github.com/Seres67/) for taking these pictures.

## Platform recommendations

### Linux

Using Steam or [Heroic Launcher](https://heroicgameslauncher.com/) is likely best here. Please use some kind of Wine or Proton newer than Wine 8.

### MacOS

Using [Heroic Launcher](https://heroicgameslauncher.com/) is recommended on macOS. Please *for the love of all that is good in this world*, do not use Whiskey. They ship Wine 7. It's rough.

Some have reported success with a variety of setups:

* One CrossOver customer suggests: set Graphics to DXMT, Synchronization to MSync.
  DXVK may be "extremely stuttery" and D3DMetal may not work properly with Nexus.
* A recent Sikarugir Engine (1.0.11/10.0.5 at time of report) may work with D3DMetal.

It's usually necessary to use `winecfg` to set the `d3d11.dll` library to `native-then-builtin`.

### Windows

It already works?

## Instructions and supported addon loaders {#install}

### Nexus

0. Have [Nexus](https://raidcore.gg/Nexus) installed.
1. Launch the game to find and install TaimiHUD within the Nexus Library.

    ![Install TaimiHUD within Nexus](./01-install.png)

2. [Opt in to prerelease updates](/docs/testers/#rc-nexus) if you want to preview [new features](/docs/testers/#rc).

3. Install some packs from the [in-game downloads](#paths) and explore from there!

### ArcDPS

0. Have [ArcDPS](https://www.deltaconnected.com/arcdps/) installed.
1. Obtain the [latest release for TaimiHUD](https://github.com/TaimiHUD/TaimiHUD/releases).
2. Place the DLL into the same folder as ArcDPS's dll \
    (usually the equivalent of `C:\Program Files\Guild Wars 2\` for your system).

## Pathing enablement {#paths}

1. Enable `KatRender Pathing (Experimental)` from within the TaimiHUD window's Pathing Options tab.

    ![Enable KatRender](./05-enable-katrender.png)

    When installed by Nexus, most settings can alternatively be reached through the Configure area for the addon:

    ![Configure TaimiHUD within Nexus](/docs/testers/rc-nexus-01-configure.png)

2. Within the Data Sources tab of the TaimiHUD primary window and settings, refresh the data sources list.

    ![Data sources](./06-datasources.png)

3. Install the pathing packs you desire.

4. Open the Pathing window to customize your experience. It can be accessed with the keybind found in Nexus or ArcDPS settings, as well as by the Nexus quick-access button at the top of the screen.

    ![Pathing window](./07-pathing.png)

## Additional support {#support}

Try checking our [FAQ](/faq/) for information about common problems,
then [reach out to us](/faq/#help) if you need additional help getting started.
