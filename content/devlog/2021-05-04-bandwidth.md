---
title: "Higher Bandwidth, new UI"
slug: bandwidth
date: 2021-05-04
---

Hah, I managed to raise the Bluetooth bandwidth from ~1kB/s to 6-7kB/s with this one magic line:

[BLE.setConnectionInterval(8, 8);](https://www.arduino.cc/en/Reference/ArduinoBLEBLEsetConnectionInterval)

It raises the power consumption by 4% (3.5mW), but that's totally worth it. I
can now get all 8 channels in 8-bit resolution at 500Hz across the aehter.
Eventually I should aim for 10-bit at 1kHz, but I think that can wait.

[![signals](/img/blog/2021-05-04_signals.thumb.png)](/img/blog/2021-05-04_signals.png)
[![gnuradio flowgraph](/img/blog/2021-05-04_gnuradio.thumb.png)](/img/blog/2021-05-04_gnuradio.png)

This is the [GNURadio flowgraph](https://codeberg.org/hut/psylink/src/commit/befedfaf7abb0a54d657f6ed11c10d54b1e74845/5_ble/gnuradio/visualize_signal.grc)
and the resulting output.  (I only have hardware for 2 electrode pairs, so
even-numbered and odd-numbered signals are wired to the same input. Still
waiting for the PCBs.)

Power ratings:

- No Bluetooth connection: 86.9mW (16.9mA x 5.14V)
- Transmitting at 1-2kB/s: 88.9mW (17.3mA x 5.14V)
- Transmitting at 6-7kB/s: 92.5mW (18.0mA x 5.14V)

Surprisingly to me, the LEDs were draining a good chunk of the power, and I
saved 16mW by removing the external power LED (see [previous
photo](/img/blog/2021-04-28_wireless.png)) and by
[PWM](https://en.wikipedia.org/w/index.php?title=Pulse-width_modulation&oldid=1003507942)-dimming
the blue LED that indicated Bluetooth connections. It gives me approximately 15
hours run time with 2x CR2032 coin cells.

Also I'm in the process of rewriting the UI:

![MyocularUI screenshot](/img/blog/2021-05-05_myocularui.png)

The colorful column graph is a live visualization of the signal.  The columns
correspond to electrode pairs, while the rows are time frames.   The top row
shows the amplitude of the signal at the current time, and the rows flow
downward, allowing you to view changes back in time, as well as correlations
between signals.

You'll also be able to change settings on the fly, view the status of e.g. key
recordings or machine learning processes, and more.  All of this is in a
[modular library](https://codeberg.org/hut/psylink/src/commit/cc55b1eeb9466044e9c84a10a428616d988a4430/pyocular/)
that will also be usable from e.g. GNURadio.

I was thinking of changing the graphical user interface toolkit from Tkinter to
a more modern one, because Tkinter looks a little shabby, and it has problems
determining which keys are currently pressed, but I decided against it, because
I made the experience of being unable to run my own software several years
after writing it because the exact version of the GUI toolkit, along with all
dependencies, was too annoying to set up.  Tkinter has been around for decades
and will probably stay, so I'll stick with it for now.  Also, I can easily
solve the key pressing issue with an external key tracking library like
[pynput](https://github.com/moses-palmer/pynput).

Can't wait to try out the new UI with 8 individual electrode pairs, once the
PCBs arrive! (assuming they work :'D)
