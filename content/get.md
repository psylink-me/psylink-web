---
title: Getting A PsyLink
---

[![PsyLink 8 photo](/img/prototypes/p8.jpg)](/p8)

PSYLINK IS A RESEARCH PROTOTYPE FOR EDUCATIONAL PURPOSES ONLY. DO NOT USE ON
LIVING ORGANISMS.  ALL INFORMATION REGARDING PSYLINK IS PROVIDED "AS IS",
WITHOUT WARRANTY OF ANY KIND. IN NO EVENT ARE THE AUTHORS OF PSYLINK LIABLE TO
YOU FOR DAMAGES.

# Option 1: DIY

PsyLink is open hardware so you can just build one yourself.

There are [various prototypes](/prototypes) and you can find their schematics
online. While we recommend building {{% link "p9" %}}, at this time, there are
only detailed [assembly instructions for Prototype 6](/p6).

If you require anything that you can't find online, [please let me
know](https://codeberg.org/psylink/psylink/issues).  Make sure to tell me how
it goes! :)

# Option 2: Ordering

If you lack the tools or the time, you're in luck:  For a limited time, you can
request a pre-assembled {{% link "p9" %}} at approximate cost price plus
shipment from Germany.

If you're interested, simply contact me via <u>info໑psylink.me</u>, with answers to
the following three questions:

## Question 1: Location

In which country do you live?

## Question 2: Caveats

Please carefully read through these points to determine whether PsyLink is
*really* the right thing for you:

1. Do you understand that PsyLink currently requires a Linux operating system,
   that is not an end user product, and that there is potentially some
   tinkering involved?
2. Do you understand that the quality of an EMG signal varies with each
   individual, and there are many factors that can degrade the EMG signal to
   the point that it's unusable, such as muscle atrophy, or a certain amount of
   fat tissue covering the muscle tissue?
3. Do you understand that PsyLink requires a [Arduino Nano 33 BLE
   Sense](https://docs.arduino.cc/hardware/nano-33-ble-sense) and a AAA-battery
   (e.g. 1.2V, rechargeable), which you'd have to purchase yourself?  Note that
   PsyLink can not charge batteries and you may need to purchase a charger as
   well.
4. Do you understand that the PsyLink is not a consumer product, just an
   educational prototype?  That this is not a medical device, that there is no
   data on potential adverse effects on user health, that you use it at your
   own risk, as is, with no warranty of any kind, and that in no event the
   PsyLink authors will be liable to you for any damages?

## Question 3: Electrode configuration

You can simply get the standard model with 16 electrodes (= 8 signals) on two
separate electrode module boards:

![standard P9 model](/img/prototypes/p9.jpg)

The cost for raw materials + assembly for this are 141€, excluding battery, an
[Arduino Nano 33 BLE
Sense](https://docs.arduino.cc/hardware/nano-33-ble-sense), and shipment from
Germany.

Depending on your use case and budget, though, you may want to tweak the
electrode configuration.  The following paragraphs aim to provide you with
enough information to make an educated decision.

You can calculate the exact cost of any configuration by using the [bill of
materials](/tables/bill_of_materials_P9.ods) of {{% link "p9" %}}.

### First, how many electrodes?

PsyLink is built with electrodes in mind, but doesn't actually need any
electrodes to work.  The information from the
[IMU](https://en.wikipedia.org/wiki/Inertial_measurement_unit)
([Gyroscope](https://en.wikipedia.org/wiki/Gyroscope),
[Accelerometer](https://en.wikipedia.org/wiki/Accelerometer)), which is built
in to the [Arduino Nano 33 BLE
Sense](https://docs.arduino.cc/hardware/nano-33-ble-sense), is already good
enough for gesture recognition, so going with 0 electrodes and just the Power
Module is certainly an option.

If you're interested in electromyography and biopotentials though, you probably
want electrodes in your psylink.  The electrodes always come in pairs that get
differentially amplified, so 2 electrodes produce 1 signal.  You can choose any
number between 1 and 8 signals.  The [kick-off
video](https://peertube.linuxrocks.online/w/vELMqkNxjVWzxUj1f7eCeX)
demonstrates the capabilities of a PsyLink with just 1 signal (= 2 electrodes),
but the more electrodes you choose, the better your EMG-based gesture
recognition capabilities will be.

With the maximum of 8 signals (= 16 electrodes), the signals could look like
this:

[![A picture of sample signals](/img/blog/2022-01-21_signal_sample.png)](/img/blog/2022-01-21_signal_sample.png)

Once you decided on the number of electrodes, we can move on to the next part
of this question:

### How should electrodes be arranged?

The standard model has all of its 16 electrodes on a small space, for the
maximum scanning resolution:

[![A labeled picture of the electrode modules](/img/blog/2022-01-18_labeled.jpg)](/img/blog/2022-01-18_labeled.jpg)

In terms of this picture, the standard model has two electrode modules with the
signals `A+B+C+D`.

This allows you to scan relatively small areas at great detail, such as the
[flexor digitorum superficialis
muscle](https://en.wikipedia.org/wiki/Flexor_digitorum_superficialis_muscle),
at the underside of your forearm.  This is the muscle responsible for flexing
fingers inward, which is interesting because while most forearm muscles produce
arm movements that can be easily captured with a gyroscope/accelerometer,
finger movements can *not*, which makes this muscle a great target.

You can of course move the electrodes to any other part of your body, but if
you are interested in scanning many muscles at the same time, perhaps go all
the way around your arm, then I would recommend getting more than 2 electrode
modules.  Example configurations are `4x(A+C)` for 4 modules with electrodes
side by side, or `8xA` for 8 electrode modules with only one electrode pair
each, for high flexibility, though this might end up being a little clumsy to
wear.

With a A+C configuration, there would be no amplification circuitry on positions
B and D, reducing cost and power consumption.  If you want the absolute maximum
flexibility though, you could decide to get 8 complete electrode modules,
`8x(A+B+C+D)`, and switch between high resolution or high scanning area on
demand.

So the question is: **What configuration of electrodes do you request?  The
standard `2x(A+B+C+D)`, or something else?**
