# LEGO Batman for Android 0.1.4

Tag: `v0.1.4` · versionCode 5 · arm64-v8a · Android 9+ · Vulkan 1.1

## Changes
- **Resolution Scale** (0.5 to 1.0) replaces Screen Resolution. The game renders at that fraction of the screen size and is stretched to fill it. The setting is saved.
- **Nintendo Button Layout** replaces Refresh Rate. It swaps A/B and X/Y on physical controllers (the on-screen buttons are unchanged) and is saved in `save/touch.cfg`.
- Fixed: after a resolution change, dxvk shrank the window to the back buffer size, so the picture no longer filled the screen.

## Asset
| File | SHA-1 |
|---|---|
| `LegoBatman-0.1.4.apk` | `d0120ecb4e10c489b28862911fd5b76dc9c47235` |

The APK is debug-signed. It contains code recompiled from the game's executable, so think carefully before you publish it (see the README's Legal section). It contains no game data: copy your own files to the phone as described in [docs/INSTALLING.md](../../docs/INSTALLING.md).
