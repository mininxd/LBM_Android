# LEGO Batman for Android 0.1.2

Tag: `v0.1.2` · versionCode 3 · arm64-v8a · Android 9+ · Vulkan 1.1

## Changes
- Fixed characters with twisted limbs on Adreno: UBYTE4 bone indices are now fetched as `R8G8B8A8_UINT`.
- Fixed controller and touch input not reaching the game. The game only polls XInput pads that DirectInput lists, so the port now lists them.
- The swap chain is no longer rebuilt on every frame (`VK_SUBOPTIMAL_KHR` on rotated displays).

## Asset
| File | SHA-1 |
|---|---|
| `LegoBatman-0.1.2.apk` | `8b132661f8c71d98892a056345c700a8d6f35651` |

The APK is debug-signed. It contains code recompiled from the game's executable, so think carefully before you publish it (see the README's Legal section). It contains no game data: copy your own files to the phone as described in [docs/INSTALLING.md](../../docs/INSTALLING.md).
