#!/usr/bin/env bash
# Install SIDControl module to Move
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

cd "$REPO_ROOT"

# Build first if dist doesn't exist
if [ ! -d "dist/sidcontrol" ]; then
    echo "Building first..."
    ./scripts/build.sh
fi

echo "=== Installing SIDControl Module ==="

echo "Copying module to Move..."
scp -r dist/sidcontrol ableton@move.local:/data/UserData/move-anything/modules/

echo ""
echo "=== Install Complete ==="
echo "Restart Move Anything or use host_rescan_modules() to load."
