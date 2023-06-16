---
title: GNURadio Flowgraph for P10
slug: sgr3
image: software/sgr3.png
date: 2022-02-01
src: https://codeberg.org/psylink/psylink/src/branch/master/gnuradio/prototype9/plot_signals.grc
prototypes: ["p8", "p9", "p9.1", "p10"]
tested: true
---

This program uses [GNURadio](https://www.gnuradio.org/) to connect to {{% link "p10" %}} and draw two graphs:

- The 8 Electrode signals
- Optionally: The 6 IMU signals separately (3-axis gyroscope and 3-direction accelerometer).
    - To activate this, right-click on the greyed-out "QT GUI Time Sink" box and click "Enable".

It technically works with any prototype that outputs 8 + 6 signals, but the graph labels are specific to {{% link "p10" %}}, {{% link "p9" %}} and similar prototypes.

Sample output:

[![screenshot of the output](/img/blog/2022-01-21_signal_sample.png)](/img/blog/2022-01-21_signal_sample.png)

See the [guide on using GNURadio with PsyLink](https://codeberg.org/psylink/psylink/wiki/Using-GNURadio)
