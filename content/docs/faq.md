+++
title = "Frequently Asked Questions"
template = "page.html"
date = 2026-02-06
+++

## Minimap looks squished or drawn outside the borders {#pathing-dpi}

Try toggling the DPI Scaling setting, found in the Config tab of TaimiHUD's primary window.
If the in-game Graphics Settings have unchecked DPI Scaling, then uncheck it so both checkboxes match.
Nexus also has its own setting for this that you might want to check on too!

## What marker file format do I pick when saving? {#markers-format}

It doesn't really matter, but if you want to share the file with your guild then beware that
TaimiHUD's own format will not be recognized by the Commander's Markers module for Blish HUD.

Tip: if you have the RealTime API addon installed (available through Nexus)
then you can have it auto-import from markers you've already placed on the current map.

## How do I get pathing to work? {#pathing-setup}

Follow the [install guide instructions](/install-guide/#pathing-enablement).

## Why does everything look glitched after turning on Goggles? {#goggles-glitched}

This feature is incompatible with some of the game's graphics settings, in particular Super/Subsampling. \
It also requires calibration on most maps the first time you visit them:
Slide the "near" slider down until paths disappear under the ground, then back off a bit.
The sweet spot is usually when you can see the path with some rocks or blades of grass poking out. \
If you see flickering or z-fighting during movement, back it off a touch more or tweak far.
