# CLAUDE.md

## Project Overview

SID Control module for Move Anything. MIDI controller for SIDaster III synthesizer.

## Build Commands

```bash
./scripts/build.sh      # Package files to dist/
./scripts/install.sh    # Deploy to Move
```

## Structure

```
src/
  module.json           # Module metadata
  ui.js                 # JavaScript UI
docs/
  design.md             # Design document
```

## Features

- 8 pages mapping Move's knobs to SIDaster's ~45 parameters
- Chromatic pad layout (C2-G5) with pink/bright pink coloring
- Overlay feedback on knob touch/turn
- Step buttons for page switching
