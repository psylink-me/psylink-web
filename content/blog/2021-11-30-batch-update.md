---
title: "Batch Update"
slug: batch-update
date: 2021-11-30
---

I haven't been posting recently because I've been focusing on other areas of my
life, but there has still been progress with PsyLink:

## Prototype 6 improvements

I redesigned {{% link "bp3" %}} to be more easily hand-solderable by enlarging the solder pads and adding thrmal clearances to some of the filled copper areas. (The copper tracks to several pads were so wide that the heat of the solder iron was dissipating too fast into the copper, and the pads were not heating up properly). The result is {{% link "bp3.1" %}}.

## Prototype 7

[PerlinWarp](https://github.com/PerlinWarp/pyomyo/wiki/Why-should-you-care%3F) reached out to me, and after some fruitful conversations, I build a {{% link "p7" %}} for him for research purposes.  It's a hybrid of {{% link "p4" %}} and {{% link "p6" %}} which combines the advanced {{% link "bp3" %}} with a cluster of {{% link "b1" %}} attached to {{% link "t4" %}}.

![p7](/img/blog/2021-09-15_p7.png)

The assembly of the {{% link "p7" %}} took a full 20 hours of mindless labor,
so I had a LOT of time to think about improvements to the design that would
make it easier to assemble:

- Instead of having small boards for differential amplifiers that have to be
  tediously connected with three fragile wires, bulk four of them up in a
  single board.
- Instead of having a piece of custom-tailored fabric with precisely placed
  electrodes, use electrodes made of metal screw-like parts that fit right
  on to the PCB. The PCBs are held together with a rubber band that presses
  the electrodes tightly to the skin.
- Made {{% link "bp3" %}} more easily hand-solderable (described above)

## Prototype 8 (WIP)

As a result, I designed {{% link "c10" %}} and {{% link "b3" %}}, which should
reduce the assembly time to less than 5 hours. (I'm still a slow solderer :D)
The circuit is:

[![c10](/img/circuits/c10.png)](/c10)

The front-side of the board:

[![b7](/img/boards/b3.png)](/b3)

The four wide holes in the board are connection points for rubber bands, and
the eight round metal-plated holes are mounting points the electrodes.  These
consist of a screw on one side, a nut on the other, holding both metal pieces
tightly in place.

The electrodes can be spacer screws [like these](https://www.reichelt.de/de/en/-6-32-to-m3-jack-screw-standoff-50-pack-st-screwnutm-p277994.html) or dome nuts [like these](https://www.schraubenking.at/M3-Hutmutter-DIN1587-Edelstahl-A2-P002263).  While the spacer screws seem to pick up a better signal, the dome nuts are considerably more comfortable thanks to the rounded cap, so I think I'll stick with these for now.

Dome nuts are also called "hutmutter" in German, which translates to "hut's
mother" (my nickname is hut), so just because of that fact, I had to try them
out.

Additionally, one can use the pins EX1 through EX8 to connect arbitrary
external electrodes.

A first prototype using {{% link "b3" %}} and {{% link "bp3.1" %}} (with an
improvised rubber band mounting mechanism) can be seen here:

![](/img/blog/2021-10-06_p8_test.jpg)

![](/img/blog/2021-10-06_p8_test2.jpg)

I played around with using off-the-shelf wet EMS (electric muscle stimulation)
electrodes for the ground electrode, since good connectivity for the ground
electrode is important for a good signal.

![](/img/blog/2021-11-18_p8_test3.jpg)

I did not find an improvement in the signal though, perhaps wet electrodes are
not worth it.

Finally, the global microchip shortage has affected this project as well, and I could not find any sources for the power converter chips (TPS61220 DCKR) that boost the battery voltage of 1.2V to the required 5.0V.  I still have some legit chips left, but in the long term, I need more of these, so I acquired some chips from Shenzhen via AliExpress. They have been advertised as _**"Original new, 100% quality"**_, so what could POSSIBLY go wrong?  But I tried them out, and they actually do their job quite nicely.

## Future plans

A power module that is more compatible with the {{% link "b3" %}}, by making it as long as the {{% link "b3" %}}, and either by adding rubber band mounting holes, or by adding pin headers so that it can be stacked on top of the amplifier board, which would reduce the number of dangling wires as well.
