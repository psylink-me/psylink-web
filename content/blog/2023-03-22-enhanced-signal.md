---
title: "Enhanced Signal by >1000%"
slug: enhancedsignal
date: 2023-03-22
author: Roman
---

Through a very simple change in the circuit, we've been able to greatly enhance the EMG signal captured by PsyLink!

On the suggestion of [Farzam](https://www.linkedin.com/in/farzam-khodajoo), I took a closer look at the high-pass filter at the very beginning of the signal processing pipeline in {{% link "c10.2" %}} and it turns out that any signal under 1,600Hz is being weakened. This is a big problem, since the EMG signals that we are interested in are approx. 5-500Hz.  By changing the capacitance from 100pF to 100nF, the cut-off frequency of the high-pass filter is shifted to 1.6Hz, leaving the EMG signal intact, while still removing low frequency noise and DC voltage.

The signal-to-noise ratio is through the roof.  See for yourself:

![screenshot](/img/blog/2023-03-22_enhanced.png)

![screenshot2](/img/blog/2023-03-22_enhanced2.png)

Red = before, Blue = after.

Some more details, if you're interested: These are two signals at out1 (blue) and out3 (red) on {{% link "c10.2" %}} where C1 and C2 have been changed from 100pF to 100nF while C5 and C6 have been left unchanged.  The electrode pair of out1 is in a row and side-by-side to the electrode pair of out3 on the same muscle (flexor digitorum superficialis muscle, as usual), about 2cm apart, so they record almost the same information.

It's even more impressive if you consider that the red signal is 16x magnified in software. The red signal spans ~300mV whereas the blue one spans ~5V, making use of all the 12 bits of the Arduino's analog-to-digital converter (though the bluetooth connection currently transfers only 8 bits. To be fixed in the future.)

What I am especially excited about:

![photograph of two electrode modules side by side. the left one uses the more uncomfortable electrode, the right one the more smooth, rounded, comfortable electrode](/img/blog/2023-03-22_comfytrodes.jpg)

We can switch from the spacer screw electrodes (on the left) to the dome nut electrodes (on the right)!  These are infinitely more comfortable, and mean that you can easily wear the PsyLink for hours.

The spacer screws bite into the skin and produce a better signal, but cause pain after a while.  With this kind of ground-breaking improvement in signal quality, this trade-off is not worth it anymore and the dome nuts make more sense now.

In the coming days I will update the schematics to reflect these changes.

I highly recommend PsyLink users to swap their 100pF capacitors for 100nF capacitors on their electrode modules.  If you do not want to do this yourself, you will be pleased to hear that **we are offering every existing PsyLink customer an upgrade free of charge. We will cover the material and delivery cost for you.**  Simply contact us if you're interested in the upgrade.
