# Valves: Legacy Controller

For existing worlds using Valves 1.2 pump controllers. This fork keeps their original pump, hidden gauge and combinator prototypes, item names and recipes when upgrading to Factorio 2.1. It retains the event-driven controller and configurable overflow/top-up thresholds instead of converting placed pumps into a different entity type.

Use maintained [Valves](https://mods.factorio.com/mod/valves) for worlds already using native valves. Both providers cannot be active together. This fork replaces the old `valves` mod through native ownership migration, preserving its saved root before initialization. Existing controller components are not rebuilt during migration.

Controls remain Numpad+ / Numpad- for thresholds, with the original configurable shortcuts and default-threshold settings. Circuit operations and fluid movement run in the engine; Lua responds to construction, mining, rotation and compatibility events. There is no added per-tick simulation loop.

Original author: stringweasel / Hein Wessels. Based on Configurable Valves code. Credits retained for Boskid (linked pipes), GotLag and Snouz (original pump artwork), and justarandomgeek (Factorio Modding Toolkit). The original MIT license is included unchanged. Authentic upstream history is retained; the legacy controller restoration and Factorio 2.1 API adaptation form one compatibility feature.

Migration fixtures preserve configured thresholds, pump and controller references, health, and fluid contents. Construction, cloning, rotation handling, mining, destruction, and directional flow were checked in the native engine. The original circuit controller retains its startup latency; it does not promise the instantaneous behavior of modern native valves. This does not claim a general lossless upgrade from arbitrary earlier valve mods or an actual multiplayer peer join.
