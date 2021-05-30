---
title: "Power Supply Module"
slug: psylink-power
date: 2021-05-09
---

I made an updated schematic (psylink6) that shows more clearly how the modules
are connected.  Also corrected an error with the feedback of the voltage
follower, and changed values of some resistors/capacitors:

[![Schematic image](data/myo/psylink6.thumb.png)](data/myo/psylink6.png)

I also constructed the power supply module:

![Photo of power module #1](data/myo/IMG_20210509_214421.crop.joined.jpg)

but for some reason it didn't work. All the parts seemed to have been connected
the right way, I couldn't find a short circuit, but the output voltage was
~0.5V instead of ~5V, and the reference voltage was just 0.  I blame a possibly
broken opamp.

Well, I didn't like the design and length of the circuit board anyway, so it
didn't hurt trashing the thing and building this beauty instead:

![Photo of power module #2](data/myo/psylink6_powermodule.png)

I'll use female-to-female jumper wires to connect V+ and GND to the arduino,
and 3 more wires to bootstrap the power supply of the mesh network of the
signal processing modules.

Notes:

- Yep, that's 2 coin cells in there
- Outputs: Black=Ground, Red=V+, Green=V+/2 (reference signal)
- There's an optional second green pin for the ground electrode
- If you're wondering why I'm using a big ass quad opamp when I just need a
  single output:  I don't have a smaller one atm.
- I totally need to move this to a SMD PCB in the long run, this is still too
  bulky, but will do for now.  It's about the dimensions of a 9V battery.

I wonder if some 深圳人 will read this, shake their head, and view me as
a primate struggling to make fire with sticks.  That's what it felt like
to construct this thing anyway.  Nevertheless, I'm one step closer to the next
prototype :)
