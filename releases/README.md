# Releases

Each folder holds the notes for one GitHub release. To publish one, create a release with the folder's tag, paste `RELEASE_NOTES.md` as the description, and attach the APK as an asset.

The APKs themselves are kept next to the notes locally but are excluded from git by `.gitignore`. GitHub release assets are uploaded separately and are not part of the repository.

| Release | Version code | Highlights |
|---|---|---|
| [v0.1.5](v0.1.5/RELEASE_NOTES.md) | versionCode 6 | The launcher icon is now the game's own icon (generated from your `GameIcon.ico` by `tools/make_icon.py`). |
| [v0.1.4](v0.1.4/RELEASE_NOTES.md) | versionCode 5 | **Resolution Scale** (0.5 to 1.0) replaces Screen Resolution. The game renders at that fraction of the screen size and is stretched to fill it. The setting is saved. |
| [v0.1.3](v0.1.3/RELEASE_NOTES.md) | versionCode 4 | **Touch Controls** On/Off replaces Vertical Sync in Video Settings. It defaults to On and is saved in `save/touch.cfg`. |
| [v0.1.2](v0.1.2/RELEASE_NOTES.md) | versionCode 3 | Fixed characters with twisted limbs on Adreno: UBYTE4 bone indices are now fetched as `R8G8B8A8_UINT`. |
| [v0.1.1](v0.1.1/RELEASE_NOTES.md) | versionCode 1 | Fixed an abort at Vulkan instance creation: dxvk created a hidden second SDL window, which Android does not allow. |
| [v0.1](v0.1/RELEASE_NOTES.md) | versionCode 1 | First Android build: the recompiled game (LEGOBatman.exe, d3dx9_35.dll, binkw32.dll), dxvk-native D3D9 on Vulkan 1.1, SDL2, and a touch overlay. |
