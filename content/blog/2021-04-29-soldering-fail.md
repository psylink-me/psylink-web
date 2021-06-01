---
title: "Soldering the Processing Units"
slug: soldering-fail
date: 2021-04-29
---

The plan was to split the circuit into:

- 1 central part including the Arduino, power supply and the OpAmp that
  generates the signal ground, and
- 8 distributed signal processing units, embedded in hot glue for stability and
  electrical insulation, consisting of an instrumentation amplifier and related
  components, close to the electrodes to avoid signal degradation.

Here's my try to solder one of those units:

[![photo](/img/blog/2021-04-30_freeform_solder.thumb.png)](/img/blog/2021-04-30_freeform_solder.png)

This took me over an hour, during which I began questioning various life
choices, started doubting this whole project, poured myself a Manhattan
cocktail, wondered how long it would take to complete all eight of these,
whether it will even be robust enough to withstand regular usage of the device
(NO, IT WON'T), and how I'm going to fix the inevitable broken solder joints
when the entire thing is in fucking hot glue...

I gave up, and now my plan is to get
[PCBs](https://en.wikipedia.org/wiki/Printed_circuit_board) for this instead.
I have little experience with this, so I've been putting it off, but how hard
can it be?

First draft:

[![photo](/img/boards/myocular0.5.1_draft.png)](https://codeberg.org/psylink/psylink/src/branch/master/schematics/myocular0.5.1.kicad_pcb)

Updated schematic:

[![photo](/img/circuits/c5.1.thumb.png)](/c5.1)

I removed the decouplying capacitor between ground and GNDS (signal ground) by
the REF pin of the INA128 because mysteriously it made the signal worse, not
better.  Also removed the 1K resistors between electrodes 1+2 and the
respective capacitors, because they served no apparent purpose.

Also, I was frustrated that GNURadio doesn't allow you to get a "rolling" view
of a signal.  [The plot widget buffers as many samples as it can show, and only
when the buffer is full, it updates the graph, clears the buffer and waits
again.](https://github.com/gnuradio/gnuradio/blob/6dbdc285469dd45d3752794c5195bd29ad45a0d5/gr-qtgui/lib/time_sink_c_impl.cc#L559-L577)
I wanted instant updates as soon as new samples are in, and as a quick&dirty
workaround I wrote a
[GNURadio shift block](https://codeberg.org/psylink/psylink/src/branch/master/experimental/5_ble/gnuradio/block_shift.py)
which keeps filling up the buffer of the plotting widgets.

I'll finish with a nice picture of a finger snap, as recorded with one
electrode pair on my dorsal wrist.  Click to enlarge and view the frequency
domain as well.  (Just one electrode pair because that's all I can squeeze out
of the poor bluetooth low energy bandwidth so far)

[![screenshot of EMG of a finger snap](/img/blog/2021-04-30_snap.thumb.png)](/img/blog/2021-04-30_snap.png)
