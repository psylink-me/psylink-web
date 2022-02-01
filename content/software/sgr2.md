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

Before using this yourself, you need to go through the following steps:

1. Flash the appropriate PsyLink firmware onto your Arduino.  To know which one to use, go to the page of your prototype and find the "Firmware" link
2. Turn on your PsyLink and perform an initial connection to your PsyLink Arduino via your operating system's Bluetooth management software.  The name of the Bluetooth device should be "PsyLink".  Note the MAC address of your Arduino
3. Double-click on the "BLE Source" block in the GNURadio flowgraph
4. Change the "Ble\_Mac" address in the "BLE Source" block to the MAC address of the Arduino that's plugged in to your PsyLink
5. Next to "Code", click on "Open in Editor".  In the editor, change the line that starts with `"libpath = "` to the path to which you have installed PsyLink's python library
6. Install the dependencies for PsyLink python library.  The easiest way is to run the following command:
    - `cd path/to/psylink/python; pip install -r requirements.txt`
    - Make sure to change the path to where you have downloaded the PsyLink software to
    - Make sure to use python 3 (possibly you'll need to change `pip` to `pip3`.)
