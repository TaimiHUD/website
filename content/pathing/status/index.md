+++
title = "Pathing Status"
template = "page.html"
date = 2026-02-06
+++

## TacO Pack Format

An overview of TaimiHUD's support for pathing pack [attributes and features](https://gw2pathing.com/docs/marker-dev/development/attributes).

See also: [Issue tracker](https://github.com/TaimiHUD/TaimiHUD/issues)

### Organization

Searching, filtering, and customization UI has been evolving since pre-release and \
continues to receive significant revisions over time.

| Attribute       | Supported | Compatibility notes
| --------------- | --------- | ----
| `defaulttoggle` | ☐ | can be enabled but won't save correctly prior to v0.4
| `displayname`   | ☑ | &nbsp;
| `copy`          | ☑ | category separators have copy buttons (see below for interactive markers)
| `ishidden`      | ☑ | not shown but corner cases related to parent state propagation likely exist?
| `isseparator`   | ☑ | &nbsp;
| `tip-name`      | ☑ | Category list (see below for map tooltips)
| `type`          | ☑ | category IDs were case-sensitive prior to v0.3.2 - inconsistent casing caused strange behaviour like missing or stuck markers
| `iconfile`      | ☐ | not displayed alongside category list

### Map

They show up!

| Attribute           | Supported | Compatibility notes
| ------------------- | --------- | ----
| `mapdisplaysize`    | ☑ | &nbsp;
| `scaleonmapwithzoom`| ☒ | ignored
| `tip-name`          | ☒ | no mouse interactions
| `tip-description`   | ☒ | &nbsp;
| `minimapvisibility` | ☑ | &nbsp;
| `mapvisibility`     | ☑ | &nbsp;

### Visual

Finer visual polish and customization are often unsupported, though \
sometimes similar functionality can be tweaked globally by user settings.

| Attribute        | Supported | Compatibility notes
| ---------------- | --------- | ----
| `color`            | ☑ | POIs
| 〃                   | ☐ | trails could not be recoloured until v0.4 (might backport to v0.3.2)
| `alpha`            | ☑ | POIs
| 〃                   | ☒ | trails ignore it atm
| `cull`             | ☒ | ignored
| `canfade`          | ☒ | 〃
| `fadenear`         | ☒ | 〃
| `fadefar`          | ☒ | 〃
| `animspeed`        | ☒ | ignored
| `bounce`           | ☒ | 〃
| `heightoffset`     | ☑ | &nbsp;
| `iconfile`         | ☑ | &nbsp;
| `iconsize`         | ☑ | &nbsp;
| `iswall`           | ☑ | haven't thoroughly tested/compared but seems to work fine?
| `occlude`          | ☒ | ignored
| `position`         | ☑ | &nbsp;
| `rotate`           | ☒ | ignored?
| `rotate-x`         | ☒ | &nbsp;
| `rotate-y`         | ☒ | &nbsp;
| `rotate-z`         | ☒ | &nbsp;
| `minsize`          | ☒ | ignored
| `maxsize`          | ☒ | 〃
| `texture`          | ☑ | TODO: opaque fallback when not provided?
| `traildata`        | ☑ | .trl version 0
| `trailscale`       | ☑ | &nbsp;
| `ingamevisibility` | ☑ | &nbsp;

### Filters

API-dependent filters are currently in beta testing and slated for the next major release as v0.4.
Besides festivals, everything else is only available as part of the v0.5 interaction \
alpha test and is planned to follow the API release.

| Attribute         | Supported | Compatibility notes
| ----------------- | --------- | ----
| `festival`          | ☑ | follows a published schedule or can be manually controlled, consistent auto-detection TBD
| `mapid`             | ☑ | currently required, markers missing it will be discarded
| `achievementid`     | ☑ | upcoming in v0.4
| `achievementbit`    | ☑ | &nbsp;
| `raid`              | ☑ | upcoming in v0.4
| `schedule`          | ☑ | upcoming in v0.5 (I haven't found a pack that uses it though?)
| `schedule-duration` | ☑ | &nbsp;
| `specialization`    | ☑ | upcoming in v0.5
| `maptype`           | ❓ | techinically supported by v0.5 but seems pointless if mapid can't be omitted
| `mount`             | ☑ | upcoming in v0.5
| `profession`        | ☑ | 〃
| `race`              | ☑ | 〃

### Dynamic Interactions

Anything related to triggers is currently in active development and is the focus of the ongoing alpha test.
See the relevant discord channel for testing details and caveats.

| Attribute      | Supported | Compatibility notes
| -------------- | --------- | ----
| `autotrigger`    | ☑ | upcoming in v0.5
| `copy`           | ☑ | upcoming in v0.5
| `copy-message`   | ☑ | 〃
| `info`           | ☐ | upcoming in v0.5
| `inforange`      | ❓ | works but unclear how it should interact in relation or combination with `triggerrange`
| `triggerrange`   | ☐ | upcoming in v0.5
| `show`           | ☐ | 〃
| `hide`           | ☐ | 〃
| `toggle`         | ☐ | 〃
| `togglecategory` | ☐ | 〃
| `resetguid`      | ☐ | 〃
| `behavior`       | ☐ | 〃
| `invertbehavior` | ☐ | 〃
| `guid`           | ☐ | 〃
| `resetlength`    | ☑ | 〃
| `script-tick`    | ☒ | ignored
| `script-focus`   | ☒ | 〃
| `script-trigger` | ☒ | 〃
| `script-filter`  | ☒ | 〃
| `script-once`    | ☒ | 〃

### Compatibility notes

* TaimiHUD *may* pay attention to `bh-` prefixed attributes if a generic fallback isn't present :\<
* The XML parser tends to be strict, so pay attention to logs in Nexus (and increase verbosity to see All messages) when diagnosing problems

### History

#### v0.3.x

Basic initial support

#### v0.4.x

Planned release for API and achievement filters

#### v0.5.x

Slated to include interaction triggers, info popups, clipboard copying, etc
