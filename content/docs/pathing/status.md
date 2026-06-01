+++
title = "Pathing Status"
template = "page.html"
date = 2026-02-06
updated = 2026-05-21
aliases = ["pathing/status"]
[extra]
header2 = true
+++

## TacO Pack Format {#taco}

An overview of TaimiHUD's support for pathing pack [attributes and features](https://gw2pathing.com/docs/marker-dev/development/attributes).

See also: [Issue tracker](https://github.com/TaimiHUD/TaimiHUD/issues)

### Organization

Searching, filtering, and customization UI has been evolving since pre-release
and continues to receive significant revisions over time.

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

Finer visual polish and customization are often unsupported, though
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

API-dependent filters are currently in beta testing and slated for the next major release as v0.4. \
Besides festivals, everything else is only available as part of the v0.5 interaction
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

Anything related to triggers is currently in active development and is the focus of the ongoing alpha test. \
See the [test details](/docs/testers/#alpha) for caveats.

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

### Compatibility notes {#taco-compat}

* TaimiHUD *may* pay attention to `bh-` prefixed attributes if a generic fallback isn't present :\<
* The XML parser tends to be strict, so pay attention to logs in Nexus (and increase verbosity to see All messages) when diagnosing problems

### History {#taco-history}

#### v0.3.x {#taco-history-0_3}

Basic initial support

#### v0.4.x {#taco-history-0_4}

Planned release for API and achievement filters

#### v0.5.x {#taco-history-0_5}

Slated to include interaction triggers, info popups, clipboard copying, etc

## Pathing Scripts {#script}

TaimiHUD is in early stages of prototyping compatibility with `pack.lua` and most [related scripting features](https://gw2pathing.com/docs/lua-scripting/lua-lib/api_intro)
offered by Blish HUD's Pathing Module.

### API Support {#script-api}

There is no standard protocol for unimplemented functions yet - expect anything
from interrupted script execution with an error to returning `nil`
or placeholder values if a request couldn't be processed.

* ☑ `PathingVersion`: fixed to `1.11.999+taimi` to indicate compatibility with recent versions of the module
* ☑ `Pathing.Version`: fixed to `1.11.999`
* ☐ `Pathing:IsVersionAtLeast(v)`: TODO \
  TODO: allow requests ending in `+taimi` or similar to check against our real versioning scheme in a way that Pathing will always respond false? \
  NOTE: `Pathing:IsVersionAtLeast(PathingVersion)` might be a quick way to check - should always be true under Blish HUD?
  * TODO: consider version constraint queries or exposing more fine-grained feature flag requests
* ☑ `Debug:Print`
* ☑ `Debug:Warn`
* ☑ `Debug:Error`
* ☐ `Debug:Watch`
* ☐ `Debug:ClearWatch`
* ☑ `Pack:Require`
* ☐ `Mumble`: TODO
  * ☐ `Mumble.Tick`, `Mumble.TimeSinceTick`: TODO
  * ☐ `Mumble.CurrentMumbleMapName`: TODO
  * ☐ `Mumble.IsAvailable`: TODO
  * ☐ `Mumble.CurrentMap`: TODO
    * ☐ `.Id`, `.IsCompetitiveMode`, `.Type`: TODO
  * ☐ `Mumble.Info`: TODO
    * ☐ `.BuildId`, `.IsGameFocused`: TODO
  * ☐ `Mumble.PlayerCamera`: TODO
    * ☐ `.NearPlaneRenderDistance`, `.FarPlaneRenderDistance`: TODO
    * ☐ `.FieldOfView`: TODO
    * ☐ `.Position`, `.Forward`: TODO
  * ☐ `Mumble.PlayerCharacter`: TODO
    * ☐ `.Position`, `.Forward`: TODO
    * ☐ `.CurrentMount`: TODO
    * ☐ `.IsInCombat`, `.IsCommander`: TODO
    * ☐ `.Race`, `.Specialization`, `.TeamColorId`: TODO
  * ☐ `Mumble.UI`: TODO
    * ☐ `.CompassRotation`, `.CompassSize`, `.IsCompassRotationEnabled`, `.IsCompassTopRight`: TODO
    * ☐ `.MapCenter`, `.MapPosition`, `.MapScale`, `.IsMapOpen`: TODO
    * ☐ `.IsTextInputFocused`: TODO
    * ☐ `.UISize`: TODO
  * ☐ `MumbleMapType`, `MumbleMountType`, `MumbleRaceType`, `MumbleUiSize`: TODO (assuming these are actual lua tables and not just for reference?)
* ☐ `Menu`: TODO
  * ☐ `Menu:Add`
  * ☐ `Menu:Remove`
  * ☐ `.OnClick`
  * ☐ `.Tooltip`
  * ☐ `.CanCheck`, `.Checked`
* ☐ `Event:OnTick`: TODO
* ☐ `User:SetClipboard(value)`: TODO
* ☑ `Vector3`
  * ☑ `.X`, `.Y`, `.Z`
  * ☑ `I:Vector3`
  * ☑ `:Length`, `:Dot`
  * ☑ `:Normalize`, `:Cross`
  * ☐ binary ops: TODO (add to trait! types and coersions? operand order? `__le/__lt`? `__eq`? `__tostring`?)
* ☐ `GameTime`: TODO
  * ☐ `.ElapsedGameTime`, `.TotalGameTime`: TODO
  * ☑ `TimeSpan`
* ☑ `Color`
  * ☑ `.R`, `.G`, `.B`, `.A`
  * ☑ `I:Color`
* ☑ `Guid`
  * ☑ `:ToBase64`
  * ☑ `I:Guid`
* ☐ `Texture`: TODO
  * ☐ `.Width`, `.Height`: TODO
  * ☒ `I:Texture(Pack, path)`: TODO
  * ☒ `I:Texture(web_id)`: TODO?
* ☐ `World`: TODO
  * ☐ `:CategoryByType`: TODO
  * ☐ `:PathableByGuid`: TODO
  * ☐ `:PathablesByGuid`: TODO
  * ☐ `:MarkerByGuid`: TODO
  * ☐ `:GetClosestMarker`, `World:GetClosestMarker(filtered)`: TODO
  * ☐ `:GetClosestMarkers`, `World:GetClosestMarkers(filtered)`: TODO
  * ☐ `:TrailByGuid`: TODO
* ☐ `Category`: TODO
  * ☑ `.Name`, `.DisplayName`, `.Namespace`, `.DefaultToggle`, `.IsHidden`, `.IsSeparator`, `.Root`: getters
  * ☐ `.LoadedFromPack`: TODO
  * ☑ `.Parent`: TODO
  * ☐ setters: TODO?
  * ☐ `:GetOrAddCategoryFromNamespace`: TODO
  * ☐ `:IsVisible`: TODO
  * ☐ `:Show`: TODO
  * ☐ `:Hide`: TODO
  * ☐ `:GetMarkers`, `:GetMarkers(recursive)`: TODO
  * ☐ `:GetTrails`, `:GetTrails(recursive)`: TODO
* ☐ `IPathable`: TODO
  * ☐ getters: TODO
  * ☐ setters: TODO
  * ☐ `:Focus`: TODO
  * ☐ `:Unfocus`: TODO
  * ☐ `:Interact`: TODO
  * ☐ (Trail)`:Remove`, (Marker)`:Remove`: TODO
  * ☐ (Trail)`:GetBehavior`, (Marker)`:GetBehavior`: TODO
  * ☐ `.BehaviorFiltered`: TODO
  * ☐ `DistanceToPlayer`: TODO
* ☐ `Marker`: TODO
  * ☐ getters: TODO
  * ☐ setters: TODO
    * ☐ `:SetPos`, `:SetRot`: TODO
    * ☐ `:SetTexture(path)`: TODO
    * ☐ `:SetTexture(web_id)`: TODO
  * ☐ `Pack:CreateMarker`: TODO
  * ☒ `I:Marker`: TODO
* ☐ `Trail`: TODO
  * ☐ getters: TODO
  * ☐ setters: TODO
    * ☐ `:SetTexture(path)`: TODO
    * ☐ `:SetTexture(web_id)`: TODO
  * ☐ `Pack:CreateTrail`: TODO
  * ☒ `I:Trail`: TODO
  * ☒ `:SetPoints`: TODO
* ☒ `IBehavior`: TODO

#### Undocumented API

TODO: check whether these were deprecated or if the reference is just out of date...

* ☑ `Debug:Info`
* ☐ `Debug:ShowMessage`
* ☐ `User:SetClipboard(value, message)`
* ☐ `User:ShowInfo(message) -> string key`
* ☐ `User:HideInfo(key)`
* ☐ `Storage:UpsertValue`
* ☐ `Storage:DeleteValue`
* ☐ `Storage:ReadValue`
* ☐ `Mumble.UI.MapCenter` and `MapPosition` type - Vector2?
* ☐ `Mumble.UI.CompassSize` type - Vector2 or Size2?
* ☐ `_G.Packs = _G.World`

##### Ambiguous Behaviour

misc things to double-check:

* instance fields like those on Vector3 are generally writable, right?
* are pathable attribute fields expected to work by reference, e.g. is `marker.Position.X = new_x` equivalent to `marker:SetPosX(new_x)`? if ineffective: is it an error to set, clobbered immediately, ignored and desync'd from real state, or what?
* are integer to number coercions wanted and/or needed for setters and methods?
* is the set of valid behaviour names a fixed/known enum?
* `__tostring` and other operators relevant at all, if so on what?
* any other missing details?
* does `Mumble.IsAvailable` account for temporary dropouts (like say loading screens, charsel, etc)? or only false if disabled?

#### References {#script-references}

* [Tutorials and sample code](https://gw2pathing.com/docs/lua-scripting/lua-tutorials/getting-started)
* [API reference documentation](https://gw2pathing.com/docs/lua-scripting/lua-lib/api_intro)
* [TehsTrails](https://github.com/xrandox/TehsTrails/blob/main/TehsTrails/Pack.lua) was a motivating use-case for the feature
* [Hero's Marker Pack](https://github.com/QuitarHero/Heros-Marker-Pack/blob/master/markers/pack.lua) appears to be a good stress test and destination for more intricate fight simulation logic than traditional timer descriptions.

### Additions and Changes {#script-extensions}

* ☐ `TaimiVersion`: addon version
* ☑ `TaimiApiVersion`: tracking api progress, currently: `0.0.1`
* ☒ `__tostring_debug`? customizing console output
* ☒ `Debug:X()` multiple arg variants?
* ☐ `Mumble.PlayerCharacter.Profession`: TODO
* ☒ `Taimi.Account.Id`: TODO (opt-in?)
* ☒ `Taimi.Camera.Up`
* ☒ `Taimi.Map.Instance`: IP
* ☒ `Taimi.Gameplay.IsLieutenant`
* ☒ `Taimi.Gameplay.IsDowned`, `Taimi.Gameplay.IsFlying`, `Taimi.Gameplay.IsGliding`, `Taimi.Gameplay.IsUnderwater`, `Taimi.Gameplay.IsFloating`: TODO
* ☒ `Taimi.Process.Id`
* ☒ `Taimi.Spatial.Camera`, `Taimi.Spatial.Player`, `Taimi.Spatial.ContinentScale`, `Taimi.Spatial:PosFromContinent` for conversions to/from inches? TODO
* ☒ `Taimi.Menu.NexusRoot`: TODO
* ☐ `Taimi.Overlay.IsTextInputFocused`: TODO

### Lua Runtime {#script-lua}

Some misc runtime characteristics to expect:

* currently targets lua 5.1 ([luajit 2.1 backend](https://luajit.org/extensions.html), pluggable at build-time)
  * ☐ `bit32`: TODO?
* a number of standard library functions may be exposed as partial shims:
  * ☐ `print` as an alias to `Debug:Print`: TODO
  * ☐ `require`: TODO
  * ☐ `os.clock`
  * ☐ `os.date`
  * ☐ `os.time`
  * ☐ `os.difftime`
  * ☐ stdlib for whatever is offered by pathing? coroutine, table.unpack+move, etc...
* see the `unsecured` setting if something's missing

### Wishlist {#script-wishlist}

* a designated subfolder as a substitute for `LUA_PATH`?
* `package.preload` and `package.loaded`
* some table to opt in to sharing data across pack boundaries
* query and/or poke all other packs?
* more UI primitives, events, etc.
* reflection for bindings to various stuff (bevy or macro or otherwise) \
  maybe use as a general-purpose debug tool for taimihud (and/or pack) development?
* `io.open` for pack resources

#### Misc TODOs {#script-todo}

* script.lua.enable datasource flag
* prompt and require opt-in to script execution per pack
* try out the tutorial examples
* empty packs should fail to load as long as they don't contain a script entry point
* be intentional about anything provided from `_G`
  * export unfiltered `_G` and/or `_ENV` to scripts when unsecured, and to `require()`
* consider how threading/coroutines interact with events and our controller
* setter methods generally don't need `&mut self`
* fallback pack/root ID to longest common prefix
* repl (in-game console)
* repl (standalone)

### History {#script-history}

#### v0.5.x {#script-history-0_5}

Initial lua prototyping
