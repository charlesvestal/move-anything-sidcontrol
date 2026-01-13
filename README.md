# SID Control

MIDI controller module for [SIDaster III](https://github.com/D4p0up/SIDaster) synthesizer on Ableton Move.

## Features

- **8 parameter pages** mapped to Move's knobs
- **Chromatic pads** (C2-G5) with velocity
- **Visual feedback** via overlay on knob touch/turn
- **Page switching** via step buttons 1-8

## Pages

| Page | Parameters |
|------|------------|
| 1 - Global | Volume, Ext In, Mode, LP, BP, Cutoff, Resonance, HP |
| 2 - Tune | Master Tuning |
| 3 - OSC 1 | Wave, Coarse, Fine, Duty, Ring, Sync, Attack, Decay |
| 4 - OSC 1+ | Sustain, Release, Output |
| 5 - OSC 2 | Wave, Coarse, Fine, Duty, Ring, Sync, Attack, Decay |
| 6 - OSC 2+ | Sustain, Release, Output |
| 7 - OSC 3 | Wave, Coarse, Fine, Duty, Ring, Sync, Attack, Decay |
| 8 - OSC 3+ | Sustain, Release, Output |

## Installation

### Via Module Store (recommended)

1. Launch Move Anything on your Move
2. Select **Module Store**
3. Find **SID Control** under Utilities
4. Select **Install**

### Manual

```bash
./scripts/build.sh
./scripts/install.sh
```

## Usage

1. Connect SIDaster to Move's USB-A port
2. Launch **SID Control** from Move Anything menu
3. Use **step buttons 1-8** to switch parameter pages
4. Turn **knobs** to adjust parameters (with acceleration)
5. Touch **knobs** to preview parameter name
6. Play **pads** for chromatic notes (C2-G5)

## Requirements

- Move Anything 1.0.0+
- SIDaster III connected via USB-A
