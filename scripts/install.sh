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

MOVE_HOST="${MOVE_HOST:-move.local}"
MOVE_USER="${MOVE_USER:-root}"
INSTALL_DIR="/data/UserData/move-anything/modules"

echo "Deploying to $MOVE_USER@$MOVE_HOST..."

# Remove old version and copy new
ssh "$MOVE_USER@$MOVE_HOST" "rm -rf $INSTALL_DIR/sidcontrol"
scp -r dist/sidcontrol "$MOVE_USER@$MOVE_HOST:$INSTALL_DIR/"

echo ""
echo "=== Install Complete ==="
echo "Restart Move Anything or use host_rescan_modules() to load."
