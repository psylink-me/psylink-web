---
title: "Data Cleaning"
slug: data-cleaning
date: 2021-04-14
---

The [arduino
code](https://codeberg.org/hut/psylink/src/branch/master/experimental/4_model3/DumbPipeFast.ino)
now produces samples at a consistent 1kHz.  I also [moved the serial read
operations of the calibrator software into a separate
thread](https://codeberg.org/hut/psylink/commit/57ca60455fa8ee658cdd774556db4a1cbf2af7e8)
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

![screenshot](data/myo/2021-04-15_03-11-08_1920x1080.unplug.png)

I'll finish with a video of me trying to play the frustrating one-button
jumping game [Sienna](https://tangramgames.dk/games/sienna/) by flipping my
wrist.  This doesn't go so well, but maybe this game isn't the best benchmark
:D My short-term goal is to finish level 1 of this game with my device.

<video class="tab" style="max-width: 100%;" controls>
    Your browser does not support the &lt;video&gt; tag, download the video
    <a href="data/myo/video4-sienna.webm">here</a>.
    <source src="data/myo/video4-sienna.webm" />
</video>

