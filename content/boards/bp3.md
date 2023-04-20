---
title: Power Module 3
slug: bp3
image: boards/bp3.png
image_back: boards/bp3_back.png
date: 2021-06-15
tested: true
prototypes: ["p6", "p7"]
src: https://codeberg.org/psylink/psylink/src/branch/master/schematics/archive/kicad/circuit9.kicad_pcb
circuit: c9.1
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
- Dimensions: 47.63 x 31.34mm

## Improvements over {{% link "bp2" %}}

- Placed the arduino and battery side-by-side instead of on top of each other.
  This makes the board wider and less tall, making it fit better on the
  forearm.
- Added more capacitors all over the place
- Added various jumpers:
    - A solder jumper to enable/disable the reference voltage generator, in
      case I come up with a setup where I won't actually need it
    - A solder jumper to sacrifice one electrode and use its analog input pin
      to measure the battery charge instead.
    - Three configuration pins, connectable via jumpers, to change software
      settings on the fly and toggle between up to 4 different modes.  Or you
      can use them to plug in an extra module.
- Hopefully fixed the layout for the step-up converter
