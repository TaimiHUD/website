+++
title = "Frequently Asked Questions"
template = "page.html"
date = 2026-02-06
updated = 2026-04-17
aliases = ["docs/faq"]
[extra]
header2 = true
+++

## Paths

### How do I get it to work? {#pathing-setup}

Follow the [setup instructions](/install-guide/#paths).

Tracking: [first-time setup](https://github.com/TaimiHUD/TaimiHUD/issues/52)

### Minimap looks squished or drawn outside the borders {#map-dpi}

Try toggling the DPI Scaling setting, found in the Config tab of TaimiHUD's primary window.
If the in-game Graphics Settings have unchecked DPI Scaling, then uncheck it so both checkboxes match.
Nexus also has its own setting for this that you might want to check on too!

Tracking: [DPI scale](https://github.com/TaimiHUD/TaimiHUD/issues/43)

### Markers are shown for completed achievements {#achievements}

API integration is slated for the next major release.
It is available as part of the [test build](/testers/) if you'd like to try it out now.

Tracking: [achievement filters](https://github.com/TaimiHUD/TaimiHUD/issues/59)

### Markers for the latest festival can't be enabled {#festival}

When our event schedule fails, you can manually override it from the Festivals section under Pathing Options.

Tracking: [festival auto-detection](https://github.com/TaimiHUD/TaimiHUD/issues/60)

### Waypoints won't copy automatically, and where are those popups that help you do hearts? {#interact}

Interactive functionality is currently the focus of an [alpha test build](/docs/testers/#alpha),
join us if you can handle experimental builds!

Tracking: [POI interactions](https://github.com/TaimiHUD/TaimiHUD/issues/4)

### Why does everything look glitched after turning on Goggles? {#goggles-glitched}

This feature is incompatible with some of the game's graphics settings, in particular Super/Subsampling.
<details>
<summary>Calibration is currently required the first time you visit most maps:</summary>
Slide the "near" slider down until paths disappear under the ground, then back off a bit.
The sweet spot is usually when you can see the path with some rocks or blades of grass poking out.
<br/>If you see flickering or z-fighting during movement, back it off a touch more or tweak far.
</details>

If you use this feature, consider helping test the new revamp as part of the ongoing [alpha test](/docs/testers/#alpha).

Tracking: [goggles](https://github.com/TaimiHUD/TaimiHUD/issues/67)

## Timers

### Where are the little circles or arrows that point to cannons?

Not yet supported.

Tracking: [directions](https://github.com/TaimiHUD/TaimiHUD/issues/5)

### What about the voices?

Tracking: [sounds](https://github.com/TaimiHUD/TaimiHUD/issues/7)

## Markers

Tip: if you have the RealTime API addon installed (available through Nexus)
then you can have it auto-import from markers you've already placed on the current map.

### What marker file format to pick when saving? {#markers-format}

It doesn't really matter, but if you want to share the file with your guild then beware that
TaimiHUD's own format will not be recognized by the Commander's Markers module for Blish HUD.

## Miscellaneous

### It's broken on Linux or MacOS {#wine}

You may be running an outdated version of Wine or Proton that isn't supported by TaimiHUD.
Whiskey in particular is known to cause these issues.

Common symptoms are:

* KatRender checkbox is stuck off and may log shader errors such as:
  * `syntax error, unexpected KW_DISCARD`
  * `Function "dot" is not defined`
* TaimiHUD may fail to start at all, reporting `error 127 (procedure not found)`
* Crashes upon trying to download packs via the in-game Data Sources

Our installation guide includes [some recommendations](/install-guide/#platform-recommendations) that may help.

Tracking: [Wine](https://github.com/TaimiHUD/TaimiHUD/issues/56)

### Multiboxing causes malfunction or FPS drops {#multibox}

Addons that use Mumblelink data require that you provide the [`-mumble` option](https://wiki.guildwars2.com/wiki/Command_line_arguments#-mumble)
to any additional instances of the game, even if you may only use TaimiHUD on your main account.
This is labelled the `Mumble link name` option in gw2launcher. Blish HUD's [multibox instructions](https://blishhud.com/docs/user/guides/multibox-support) explain how to do this in detail.

### How do I get help or report a bug? {#help}

We try to keep track of bugs and feature requests using the [issue tracker](https://github.com/TaimiHUD/TaimiHUD/issues),
so check there first for existing discussions before opening a new one.
Otherwise feel free to ask any questions you may have on our [community's Discord server](https://discord.gg/ZBQJdEDFBS).
