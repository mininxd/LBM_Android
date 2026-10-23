# LEGO Batman for Android 0.1.5

Tag: `v0.1.5` · versionCode 6 · arm64-v8a · Android 9+ · Vulkan 1.1

## Changes
- The launcher icon is now the game's own icon (generated from your `GameIcon.ico` by `tools/make_icon.py`).
- Resolution Scale now goes from 0.2 to 1.0 in 0.1 steps.
- New **Skip Cutscenes** toggle, which replaces the Aspect Ratio row. It is saved in `save/touch.cfg`. Full story cutscenes are skipped automatically.
- The Options entry is renamed from "Video Settings" to **Video and Port Settings**.
- Low scales are no longer hidden by the game's 640x480 minimum: the mode list is refilled after the game sorts it.
- Known limitation: in-level scenes that show a "Skip" prompt still need a press of Start.

## Asset
| File | SHA-1 |
|---|---|
| `LegoBatman-0.1.5.apk` | `46660b4a6d86413ef920ebe9cfde54b440caa058` |

The APK is debug-signed. It contains code recompiled from the game's executable, so think carefully before you publish it (see the README's Legal section). It contains no game data: copy your own files to the phone as described in [docs/INSTALLING.md](../../docs/INSTALLING.md).
