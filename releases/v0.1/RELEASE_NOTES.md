# LEGO Batman for Android 0.1

Tag: `v0.1` · versionCode 1 · arm64-v8a · Android 9+ · Vulkan 1.1 · **pre-release (crashes at startup)**

## Changes
- First Android build: the recompiled game (LEGOBatman.exe, d3dx9_35.dll, binkw32.dll), dxvk-native D3D9 on Vulkan 1.1, SDL2, and a touch overlay.
- arm64 fixes for dxvk (x86 intrinsics guarded).
- Known issue: aborts at startup (fixed in 0.1.1).

## Asset
| File | SHA-1 |
|---|---|
| `LegoBatman-0.1.apk` | `4dad1540e90bcbf39d04996a66245c335339b4f3` |

The APK is debug-signed. It contains code recompiled from the game's executable, so think carefully before you publish it (see the README's Legal section). It contains no game data: copy your own files to the phone as described in [docs/INSTALLING.md](../../docs/INSTALLING.md).
