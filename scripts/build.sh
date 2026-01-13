#!/usr/bin/env bash
# Build SIDControl module for Move Anything
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

cd "$REPO_ROOT"

echo "=== Building SIDControl Module ==="

# Create dist directory
mkdir -p dist/sidcontrol

# Copy files
echo "Packaging..."
cp src/module.json dist/sidcontrol/
cp src/ui.js dist/sidcontrol/

# Create tarball
cd dist
tar -czvf sidcontrol-module.tar.gz sidcontrol/
cd ..

echo ""
echo "=== Build Complete ==="
echo "Output: dist/sidcontrol/"
echo "Tarball: dist/sidcontrol-module.tar.gz"
echo ""
echo "To install on Move:"
echo "  ./scripts/install.sh"
