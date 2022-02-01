---
title: AnalogToBLE1.1.ino
slug: sabt1.1
image: software/sabt1.png
date: 2022-02-01
src: "https://codeberg.org/psylink/psylink/src/branch/master/arduino/AnalogToBLE1.1/AnalogToBLE1.1.ino"
prototypes: ["p9.1"]
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

## Differences compared to {{% link "sabt1" %}}

- Because {{% link "p9.1" %}} has a higher amplification gain than {{% link "p9" %}}, the signal amplitude window has been expanded from 1921-2176 to 1040-3080.
    - Explanation: The transmission bit rate is only 8 bits per sample, whereas the sampling bit rate is 12 bits per sample, therefore we "zoom in" from the total range of 0-4095 to the part that is most relevant, before it's downscaled to values between 1 and 255.)
