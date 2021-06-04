---
title: "Back to the Roots"
slug: roots
date: 2021-06-04
---

While uploading the old videos to the new [PeerTube
channel](https://peertube.linuxrocks.online/video-channels/psylink/videos), I
viewed the [first
video](https://peertube.linuxrocks.online/videos/watch/24bec96b-2945-419b-96fb-0bc91185d99b)
once again, which shows a pretty good signal from just [two pieces of aluminum
foil taped to the skin](/p1).  And I wondered, why do I even bother with such a
complicated set-up like in {{% link "p4" %}}?  It was really annoying to
solder, and the device is clunky and fragile.

Let's go back to the roots and build something more simple.  Plenty of reasons:

- What happened with the idea to process the signal as little as possible and
  leave the job to the neural network?  {{% link "c6" %}} amplifies certain
  information but hides other, like the DC voltage offset between electrodes.
- The electrode map of {{% link "p4" %}} provides me with signals (like "arm
  turns left/right") which are redundant since I added support for the
  [inertial measurement unit](/blog/gyroscope) (IMU).
    - The signal from the IMU is actually way more reliable than what I'm
      getting from the electrodes, so why not ditch them completely?  Well,
      there are some parts of the arm that move separately from the Arduino,
      mainly the fingers.  So let's focus on these.
- My main issue with the early prototypes was the poor signal-to-noise ratio,
  but that was mainly due to the power line.  This should be gone with a
  battery-powered device.

## Circuit 7

The {{% link "c7" %}} shows a simplification of the signal processing module to
a simple non-inverting amplifier per electrode with a gain of 221x.  There's
also a 560K bias resistor towards Vref so the voltage we measure isn't too far
off the center.  In {{% link "c6" %}} I had used 1MOhm, but here it produced
mysterious oscillations, so I had to go down to 560K.

This circuit also features a rechargeable 1.2V AAA battery with a TPS61220
step-up converter, because I don't hate nature, and I burned through enough
CR2032s.  Hopefully AAA will also be more suited for the 20mA discharge of the
PsyLink than the coin cells.

[![circuit 7](/img/circuits/c7.png)](/c7)

I measured a signal along the Flexor Digitorum Superficialis. Blue is electrode
1, red is electrode 2, and green is an amplified difference. The signals range
from 0 to 1, and are offset by -1*n so they don't overlap.  This is what it
looked like to press down a finger onto the table:

![signals](/img/blog/2021-06-03_signals_c7.png)

## Circuit 8

But let's cut even more out of this circuit.  Here's one that is designed to be
a shield to the Arduino Nano 33 BLE Sense, containing just the power supply,
and an array of pass-through pins:

[![circuit 8](/img/circuits/c8.png)](/c8)

The signal that I'm getting is weaker, but certainly usable: (again, I measured
a signal along the Flexor Digitorum Superficialis. Blue is electrode 1, red is
electrode 2, and green is an amplified difference. The signals range from 0 to
1, and are offset by -1*n so they don't overlap.)

![signals](/img/blog/2021-06-03_signals_c8.png)

## PCB

I also built a PCB that implements this power supply/pass-through shield, and I
figured, even if the device ends up not very useful, I'll still be able to use
this for experiments later on, thanks to the pass-through pins.

[![bp2](/img/boards/bp2.png)](/bp2)

I just hope that the PCB/circuit will work at all, still haven't figured out
how to simulate it, and I don't really know the best practices for PCB design.
The footprint for the AAA battery clips (Keystone 82) is my first custom-made
footprint too.  Hope it all works out.

## Next Prototype

It will be a relatively small forearm band with 8 electrodes (+ 1 ground
electrode), which I plan to place around the [Flexor Digitorum
Superficialis](https://en.wikipedia.org/wiki/Flexor_digitorum_superficialis_muscle)
for detecting what individual fingers are doing.  The information from the
gyroscope + accelerometer should cover the rest.
