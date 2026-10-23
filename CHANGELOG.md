# Changelog

All releases are arm64-v8a debug-signed APKs for Android 9+ (API 28) with Vulkan 1.1.
Dates are 2026-10-22 (UTC+1).

## 0.1.5 (versionCode 6)
- The launcher icon is now the game's own icon (generated from your `GameIcon.ico` by `tools/make_icon.py`).
- Resolution Scale now goes from 0.2 to 1.0 in 0.1 steps.
- New **Skip Cutscenes** toggle, which replaces the Aspect Ratio row. It is saved in `save/touch.cfg`. Full story cutscenes are skipped automatically.
- The Options entry is renamed from "Video Settings" to **Video and Port Settings**.
- Low scales are no longer hidden by the game's 640x480 minimum: the mode list is refilled after the game sorts it.
- Known limitation: in-level scenes that show a "Skip" prompt still need a press of Start.

## 0.1.4 (versionCode 5)
- **Resolution Scale** (0.5 to 1.0) replaces Screen Resolution. The game renders at that fraction of the screen size and is stretched to fill it. The setting is saved.
- **Nintendo Button Layout** replaces Refresh Rate. It swaps A/B and X/Y on physical controllers (the on-screen buttons are unchanged) and is saved in `save/touch.cfg`.
- Fixed: after a resolution change, dxvk shrank the window to the back buffer size, so the picture no longer filled the screen.

## 0.1.3 (versionCode 4)
- **Touch Controls** On/Off replaces Vertical Sync in Video Settings. It defaults to On and is saved in `save/touch.cfg`.
- The main menu says "Quit Game" instead of "Quit to Windows".
- Android always presents with vsync.

## 0.1.2 (versionCode 3)
- Fixed characters with twisted limbs on Adreno: UBYTE4 bone indices are now fetched as `R8G8B8A8_UINT`.
- Fixed controller and touch input not reaching the game. The game only polls XInput pads that DirectInput lists, so the port now lists them.
- The swap chain is no longer rebuilt on every frame (`VK_SUBOPTIMAL_KHR` on rotated displays).

## 0.1.1 (versionCode 1)
- Fixed an abort at Vulkan instance creation: dxvk created a hidden second SDL window, which Android does not allow.
- dxvk errors are now written to `log.txt`.
- Note: this build kept versionCode 1, so uninstall 0.1 before installing it.

## 0.1 (versionCode 1)
- First Android build: the recompiled game (LEGOBatman.exe, d3dx9_35.dll, binkw32.dll), dxvk-native D3D9 on Vulkan 1.1, SDL2, and a touch overlay.
- arm64 fixes for dxvk (x86 intrinsics guarded).
- Known issue: aborts at startup (fixed in 0.1.1).
