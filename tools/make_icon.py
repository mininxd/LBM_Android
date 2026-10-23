"""Installs the launcher icon from your own copy of the game.

Usage: make_icon.py PATH/TO/GameIcon.ico

GameIcon.ico ships next to LEGOBatman.exe (it is the exe's own icon). The
repository only carries a placeholder icon, because the real one belongs to
the game. This writes android/app/src/main/res/mipmap-*/ic_launcher.png.
Needs Pillow (pip install pillow).
"""
import os
import sys

from PIL import Image

RES = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "android", "app", "src", "main", "res")
SIZES = {"mdpi": 48, "hdpi": 72, "xhdpi": 96, "xxhdpi": 144, "xxxhdpi": 192}

im = Image.open(sys.argv[1])
im.size = max(im.info.get("sizes", {im.size}), key=lambda s: s[0] * s[1])
im = im.convert("RGBA")
for dpi, px in SIZES.items():
    out = os.path.join(RES, "mipmap-" + dpi, "ic_launcher.png")
    im.resize((px, px), Image.LANCZOS).save(out)
    print("wrote", out)
