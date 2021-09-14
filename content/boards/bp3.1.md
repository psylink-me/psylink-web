---
title: Power Module 3.1
slug: bp3.1
image: boards/bp3.1.png
image_back: boards/bp3.1_back.png
date: 2021-09-14
prototypes: ["p6"]
src: https://codeberg.org/psylink/psylink/src/branch/master/schematics/bp3.1.kicad_pcb
circuit: c9.1
---

## Improvements over {{% link "bp3" %}}

- Changed package for L1 inductance coil from 1206 to 1210, so one can fit larger coils with a higher maximum current rating on it
- For easier soldering, added thermal reliefs on the filled area for GND on the back side
- For easier soldering, [added larger pads for L1/U*/R*/C* components](https://codeberg.org/psylink/psylink/issues/8)
