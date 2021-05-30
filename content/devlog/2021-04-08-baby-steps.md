---
title: "Baby Steps"
slug: psylink-baby-steps
date: 2021-04-08
---

The Arduino arrived.  I have no electrodes though.  But what are electrodes,
just some pieces of metal taped to your skin, right?  Let's improvise that:

![photo](data/myo/IMG_20210409_024039.jpg)

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
can find the [source code here.](https://codeberg.org/hut/psylink/src/branch/master/experimental/1_initial_test/ReadAnalogVoltage1.ino)

This video shows the myoelectric signal on Arduino IDE's built-in signal
plotter:

<video class="tab" style="max-width: 100%;" controls>
    Your browser does not support the &lt;video&gt; tag, download the video
    <a href="data/myo/video1.webm">here</a>.
    <source src="data/myo/video1.webm" />
</video>
