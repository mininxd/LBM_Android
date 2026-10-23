# LEGO Batman for Android 0.1.1

Tag: `v0.1.1` · versionCode 1 · arm64-v8a · Android 9+ · Vulkan 1.1

## Changes
- Fixed an abort at Vulkan instance creation: dxvk created a hidden second SDL window, which Android does not allow.
- dxvk errors are now written to `log.txt`.
- Note: this build kept versionCode 1, so uninstall 0.1 before installing it.

## Asset
| File | SHA-1 |
|---|---|
| `LegoBatman-0.1.1.apk` | `4adc0aa16197b601bafa8b339b7ec15bf0bb9029` |

The APK is debug-signed. It contains code recompiled from the game's executable, so think carefully before you publish it (see the README's Legal section). It contains no game data: copy your own files to the phone as described in [docs/INSTALLING.md](../../docs/INSTALLING.md).
