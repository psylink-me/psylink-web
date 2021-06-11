---
title: Power Module 2
slug: bp2
image: boards/bp2.png
date: 2021-06-04
blog: roots
src: https://codeberg.org/psylink/psylink/src/branch/master/schematics/circuit8.kicad_pcb
tested: true
broken: true
circuit: c8
---

An "Arduino Nano 33 BLE Sense" shield that...

- Supplies 5V (V+ pins) from a TSP61220 step-up converter,
    - This voltage also powers the Arduino
- Supplies 2.5V (Vref pins) from a voltage divider + LM321 opamp,
- Is powered by a 1.2V AAA battery on "Keystone 82" battery clips,
- Exposes 3 digital and 8 analog pass-through pins for the Arduino
