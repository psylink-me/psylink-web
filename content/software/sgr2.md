---
title: GNURadio Flowgraph for P6
slug: sgr2
image: software/sgr2.png
date: 2021-07-25
src: https://codeberg.org/psylink/psylink/src/branch/master/gnuradio/prototype6/plot_signals.grc
prototypes: ["p6"]
tested: true
---

This program uses [GNURadio](https://www.gnuradio.org/) to connect to {{% link "p6" %}} and draw three graphs:

- The 8 Electrode signals
- Amplified differences of 3 selected electrode pairs, which go along muscles for the ring finger, midde finger, and index finger
- The 6 IMU signals separately (3-axis gyroscope and 3-direction accelerometer)

[![screenshot of the output](/img/blog/2021-07-25_gnuradio_imu_diff.png)](/img/blog/2021-07-25_gnuradio_imu_diff.png)

It technically works with any prototype that outputs 14 signals, but the graph labels are specific to P6.
