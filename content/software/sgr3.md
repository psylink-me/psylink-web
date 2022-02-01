---
title: GNURadio Flowgraph for P9
slug: sgr3
image: software/sgr3.png
date: 2022-02-01
src: https://codeberg.org/psylink/psylink/src/branch/master/gnuradio/prototype9/plot_signals.grc
prototypes: ["p8", "p9", "p9.1"]
tested: true
---

This program uses [GNURadio](https://www.gnuradio.org/) to connect to {{% link "p9" %}} and draw two graphs:

- The 8 Electrode signals
- Optionally: The 6 IMU signals separately (3-axis gyroscope and 3-direction accelerometer).
    - To activate this, right-click on the greyed-out "QT GUI Time Sink" box and click "Enable".

It technically works with any prototype that outputs 8 + 6 signals, but the graph labels are specific to {{% link "p9" %}} and similar prototypes.

Sample output:

[![screenshot of the output](/img/blog/2022-01-21_signal_sample.png)](/img/blog/2022-01-21_signal_sample.png)

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
