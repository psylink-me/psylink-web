---
title: AnalogToBLE 1.0 Firmware
slug: sabt1
image: software/sabt1.png
date: 2021-07-27
video: "https://peertube.linuxrocks.online/w/vELMqkNxjVWzxUj1f7eCeX"
src: "https://codeberg.org/psylink/psylink/src/branch/master/arduino/AnalogToBLE1.0/AnalogToBLE1.0.ino"
prototypes: ["p9"]
tested: true
---

This is the basic arduino firmware for reading out the values from the
analog-to-digital converter (electrodes) and the inertial measurement unit
(accelerometer, gyroscope) and sending them via bluetooth.

The basic parameters can be easily changed in the "Configuration" section:

- `SAMPLE_RATE`: 500 Hz (samples per second) by default. Reduce if you have trouble with dropped packets.
- `CHANNELS`: The number of electrode signals. Default and maximum is 8. If you use fewer signals, it helps to reduce this number, as it avoids using up the limited bandwidth on sending useless noise.

The digital pin `D2` is programmed to block transmission of IMU (accelerometer,
gyroscope) signals when the pin is grounded.  This allows you to test the
getsure recognition quality with the {{% link "s3" %}} with electrodes alone.
