---
title: "Data Cleaning"
slug: data-cleaning
date: 2021-04-14
---

The [arduino
code](https://codeberg.org/psylink/psylink/src/branch/master/experimental/4_model3/DumbPipeFast.ino)
now produces samples at a consistent 1kHz.  I also [moved the serial read
operations of the calibrator software into a separate
thread](https://codeberg.org/psylink/psylink/commit/57ca60455fa8ee658cdd774556db4a1cbf2af7e8)
so that it doesn't slow down on heavy load, causing the buffer to fill up, and
the labeling to desynchronize.  I am once again confused and surprised that I
got ANY useful results before.

I disconnected analog input pin 7 from any electrode, and used it as a baseline
for the other analog reads.  By subtracting pin 7 from every other pin, the
noise that all reads had in common was cancelled out.  Hope this doesn't do
more harm than good.

I also connected the ground line to one of the wrist electrodes rather than to
the palm, since the palm electrode tended to move around a bit, rendering all
the other signals unstable.

And did you know that the signals looks much cleaner when you unplug the laptop
from the power grid? :p

![screenshot](/img/blog/2021-04-15_arduino_signal_unplug.png)

I'll finish with a video of me trying to play the frustrating one-button
jumping game [Sienna](https://tangramgames.dk/games/sienna/) by flipping my
wrist.  This doesn't go so well, but maybe this game isn't the best benchmark
:D My short-term goal is to finish level 1 of this game with my device.

<iframe width="560" height="315" sandbox="allow-same-origin allow-scripts allow-popups" title="PsyLink 3 Demo #2" src="https://peertube.linuxrocks.online/videos/embed/1f3470fd-bb9a-4202-ba53-1d6686061cae" frameborder="0" allowfullscreen></iframe>
