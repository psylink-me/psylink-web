---
title: Power Module 3
slug: bp3
image: boards/bp3.png
image_back: boards/bp3_back.png
date: 2021-06-15
src: https://codeberg.org/psylink/psylink/src/branch/master/schematics/circuit9.kicad_pcb
circuit: c9
---

An "Arduino Nano 33 BLE Sense" shield that...

- Supplies 5V (V+ pins) from a TSP61220 step-up converter,
    - This voltage also powers the Arduino
- Supplies 2.5V (Vref pins) from a voltage divider + LM321 opamp,
- Is powered by a 1.2V AAA battery on "Keystone 82" battery clips,
- Exposes 3 digital and 8 analog pass-through pins for the Arduino
- Provides jumpers for
    - Enabling the reference voltage circuit
    - Conncting Arduino's A7 to the + terminal of the battery to measure the
      battery level
    - Two software-configurable pins that you can ground with a jumper
- Dimensions: 47.63 x 31.34mm
