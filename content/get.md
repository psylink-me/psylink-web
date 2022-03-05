---
title: Getting A PsyLink
---

{{% include "warning.md" %}}

[![PsyLink 9 photo](/img/prototypes/p9.1.jpg)](/p9.2)

PsyLink is an open source [sEMG](https://en.wikipedia.org/wiki/Electromyography)-based neural interface with AI-powered gesture recognition, built for researchers and tinkerers.  It's useful as-is, as well as a great starting point for your own ideas.

What sets PsyLink apart is the openness of the project, the lack of license fees, the simplicity of the design, the extensibility and modularity, and the fact that you are in full control of the device.

![screen shot of signals, colors changed](/img/signals.png)

With PsyLink, your research will never be voided like [when the "Myo" was taken off the market and left their users dry](https://www.zdnet.com/article/thalmic-labs-shuts-down-myo-gesture-control-armband-project/), and your body will never become a technology graveyard like [when "Second Sight" pulled the rug from under their implant users](https://spectrum.ieee.org/bionic-eye-obsolete).  Not just the device is in your hands, but also the schematics, the code, and the freedom to extend it as you wish.

If you would like to give PsyLink a try, you have the following options:

## 1. Assemble it yourself

![Photo of PsyLink assembly](/img/assembly.jpg)

This entire project is open source, the raw materials cost only about 100€, so feel free to replicate it!

There are [various prototypes](/prototypes) and each includes its own schematics, bill of materials, and cost breakdowns.  The [PsyLink Wiki](https://codeberg.org/psylink/psylink/wiki) contains tutorials on how to assemble it and how to get started with the software.  If you require anything that you can't find online, [please let us know](https://codeberg.org/psylink/psylink/issues).  Also, please make sure to [tell us how it goes!](/faq#contact) :)

## 2. Request a pre-assembled one

![Photo of a PsyLink in a package](/img/packed.jpg)

If you lack the tools or the time, you're in luck:  For a limited time, you can request a pre-assembled prototype from us!  Simply send the answers to the following questions to <u>info໑psylink.me</u>, and we're sure that we can arrange something that fits your individual needs.

1. In which country do you live?
2. What would you like to do with PsyLink?
3. Do you understand and accept the following caveats?

Caveats:

1. PsyLink currently requires a Linux operating system, the user experience has rough edges, and there is probably some tinkering involved.
2. The quality of an EMG signal varies with each individual, and there are many factors that can degrade the EMG signal to the point that it's unusable, such as muscle atrophy, or a certain amount of fat tissue covering the muscle (though the accelerometer/gyroscope signal is unaffected by this.)
3. PsyLink requires a [Arduino Nano 33 BLE Sense](https://docs.arduino.cc/hardware/nano-33-ble-sense) and a AAA-battery (e.g. 1.2V, rechargeable), which you'd have to purchase yourself.  Also, PsyLink can not charge batteries and you may need to purchase a charger as well.
4. PsyLink is not a consumer product, just an educational prototype.  It is not a medical device.  There is no data on potential adverse effects on user health.  You use it at your own risk, as is, with no warranty of any kind. In no event the PsyLink authors will be liable to you for any damages.

We are excited to hear from you, and to learn about what you'll do with PsyLink! ♥
