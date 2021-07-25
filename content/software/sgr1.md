---
title: GNURadio Flowgraph for P4
slug: sgr1
image: software/sgr1.png
date: 2021-04-25
src: https://codeberg.org/psylink/psylink/src/branch/master/gnuradio/prototype4/plot_signals.grc
prototypes: ["p4"]
blog: wireless
tested: true
---

This program uses [GNURadio](https://www.gnuradio.org/) to connect to {{% link "p4" %}} and draw two graphs:

- The 8 Electrode signals
- The 6 IMU signals separately (3-axis gyroscope and 3-direction accelerometer)

It technically works with any prototype that outputs 14 signals, but the graph labels are specific to P4.
