+++
title = "Install Guide"
template = "page.html"
date = 2025-11-22
+++

Credit to [Seres (@Seres67)](https://github.com/Seres67/) for taking these pictures.

Pathing is currently available within pre-releases. Please obtain the pre-release version of TaimiHUD should that be the feature set you desire. It will eventually be released in the main version once decently stabilized.

## Addon loader specific install

### Nexus

0. Have Nexus installed.
1. Press install for TaimiHUD within the Nexus library.

![Install TaimiHUD within Nexus](./01-install.png)

#### For pre-releases

2. Hit configure for TaimiHUD within Nexus.

![Configure TaimiHUD within Nexus](./02-configure.png)

3. Enable `Allow Pre-Release Updates` for TaimiHUD within the configure area.

![Enable pre-releases](./03-pre-releases.png)

4. Check for updates to make Nexus download the pre-release version of TaimiHUD.

![Check for updates](./04-check-for-updates.png)

### ArcDPS

0. Have ArcDPS installed.
1. Obtain the [latest release for TaimiHUD](https://github.com/TaimiHUD/TaimiHUD/releases). If you want the pre-release (where Pathing is currently), make sure to grab that instead of the regular latest release.
2. Install the DLL into the same folder as ArcDPS's dll (usually the equivalent of `C:\Program Files\Guild Wars 2\` for your system).

## Pathing enablement

1. Enable `KatRender Pathing (Experimental)` either:
    - if installed within Nexus, within the same Configure area that you enabled pre-releases for TaimiHUD in.
    - if installed via ArcDPS, within either TaimiHUD's ArcDPS extensions tab or in the TaimiHUD primary window's config tab.

![Enable KatRender](./05-enable-katrender.png)

2. Within the data sources tab of the TaimiHUD primary window, refresh the data sources list.

![Data sources](./06-datasources.png)

3. Install the pathing packs you desire.

4. Open the Pathing window, either with the keybind in Nexus and ArcDPS for it or by the Nexus quick-access button.

![Pathing window](./07-pathing.png)
