---
title: AnalogToBLE 1.2 Firmware
slug: sabt1.2
image: software/sabt1.png
date: 2023-04-06
src: "https://codeberg.org/psylink/psylink/src/branch/master/arduino/AnalogToBLE1.1/AnalogToBLE1.1.ino"
prototypes: ["p9.3"]
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

## Differences compared to {{% link "sabt1.1" %}}

- Transmit the entire range of the analog-to-digital-converter, from 0V to 5V, instead of zooming in by x2 on the center. Note that it's only transmitted in 8bit whereas the recorded signal is 12bit.
