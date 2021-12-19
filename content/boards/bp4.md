---
title: Power Module 4
slug: bp4
image: boards/bp4.png
image_back: boards/bp4_back.png
date: 2021-12-12
tested: true
blog: power-module4
prototypes: ["p8"]
src: https://codeberg.org/psylink/psylink/src/branch/master/schematics/circuit11.kicad_pcb
circuit: c11
---

An "Arduino Nano 33 BLE Sense" shield that...

- Supplies 5V (V+ pins) from a TSP61220 step-up converter,
    - This voltage also powers the Arduino
- Supplies 2.5V (Vref pins) from a voltage divider + LM321 opamp,
- Is powered by a 1.2V AAA battery on "Keystone 82" battery clips,
- Exposes 3 digital and 8 analog pass-through pins for the Arduino
- Provides jumpers for
    - Enabling the reference voltage circuit
    - Connecting Arduino's A7 to the + terminal of the battery to measure the
      battery level
    - Two software-configurable pins that you can ground with a jumper
    - Five jumpers that connect each of the five screw mounting points with
      Vref, to turn them into ground electrode(s) if desired
- Is based on {{% link "bp3" %}}, with the following changes:
    - Separated I/O pins from power pins
    - Added a third set of power pins
    - Added screw mounting places which are optionally connected to Vref
    - Added holes for rubber bands for connection to other boards like {{% link "b3" %}}
- Dimensions: 89.98mm x 32.58mm
