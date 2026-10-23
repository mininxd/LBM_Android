#!/bin/sh
# Regenerates gen/ (recompiled C) from your own game files.
# Usage: tools/regen_gen.sh GAME_DIR
# GAME_DIR must contain LEGOBatman.exe (DRM-free, see docs/GAME_FILES.md),
# d3dx9_35.dll and binkw32.dll.
# Needs Python 3.10+: pip install capstone==5.0.9 pefile==2024.8.26
set -e
G=$(cd "${1:?usage: tools/regen_gen.sh GAME_DIR}" && pwd)
ROOT=$(cd "$(dirname "$0")/.." && pwd)
cd "$ROOT"
mkdir -p analysis gen
# discover.py imports peimg.py from tools/, so run it from there.
(cd tools && python3 discover.py "$G/LEGOBatman.exe" ../analysis/exe.json)
(cd tools && python3 discover.py "$G/binkw32.dll" ../analysis/bink.json 09000000)
(cd tools && python3 discover.py "$G/d3dx9_35.dll" ../analysis/d3dx9.json 08000000)  # ~1 hour
python3 tools/lift.py "$G/LEGOBatman.exe" analysis/exe.json gen exe
python3 tools/lift.py "$G/d3dx9_35.dll" analysis/d3dx9.json gen d3dx9 08000000
python3 tools/lift.py "$G/binkw32.dll" analysis/bink.json gen bink 09000000
python3 tools/gen_d3d9_bridge.py runtime
echo "gen/ is ready"
