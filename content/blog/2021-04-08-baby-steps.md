---
title: "Baby Steps"
slug: baby-steps
date: 2021-04-08
author: Roman
---

The Arduino arrived.  I have no electrodes though.  But what are electrodes,
just some pieces of metal taped to your skin, right?  Let's improvise that:

![photo](/img/prototypes/p1.jpg)

There are two pieces of aluminum foil taped to my skin, held together with blue
medical wrap.

The educational material about electromyographs that I've seen described a
chain of hardware elements to process and clean up the signal:

- amplification
- filtering
- rectification
- antialiasing
- smoothing
- averaging
- etc.

But I thought, let's focus on the MVP. Why not simply hook the electrodes
straight to the analog input pins of the Arduino with some alligator clamps?
Worked fine.  I did minimal signal processing in software though, you
can find the [source code here.](https://codeberg.org/psylink/psylink/src/branch/master/experimental/1_initial_test/ReadAnalogVoltage1.ino)

This video shows the myoelectric signal on Arduino IDE's built-in signal
plotter:

<iframe width="560" height="315" sandbox="allow-same-origin allow-scripts allow-popups" title="PsyLink 1 Demo (remastered)" src="https://peertube.linuxrocks.online/videos/embed/a32a87cd-7a40-4cc2-8984-b44be52a8e2c" frameborder="0" allowfullscreen></iframe>
