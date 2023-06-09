---
title: "Gyroscope + Accelerometer"
slug: gyroscope
date: 2021-05-17
author: Roman
---

I fixed up the PsyLink UI.  It was so broken after the rewrite to Bluetooth Low
Energy, I'm once again stunned that I got ANY useful results before. But now it
receives the transmissions from the Arduino properly.

[![PsyLink UI screenshot](/img/blog/2021-05-18_s3.png)](/s3)

I also added 6 more signal channels: The x/y/z-axes from the Gyroscope and
from the Accelerometer that are built in to the Arduino Nano 33 BLE Sense.

All put together finally allowed me to singlehandedly drive through the finish
line of my favorite racing game F-Zero! \o/


<iframe width="560" height="315" sandbox="allow-same-origin allow-scripts allow-popups" title="PsyLink 4 Demo" src="https://peertube.linuxrocks.online/videos/embed/50f04ab3-fb5f-4fda-b254-af0664641828" frameborder="0" allowfullscreen></iframe>

- For training the AI, I recorded 60k samples over 2 minutes (500Hz)
- Trained for 5 epochs, which took 1 minute without GPU acceleration
- 4 training labels ("left", "right", "accelerate", "nothing")
- Final training and validation loss: 0.04, accuracy: 98%
- [6 layer neural network with 2 convolutional layers](https://codeberg.org/psylink/psylink/src/commit/c06ec54995efff4af5d523d30151ce8a60cb4715/python/psylink/ai.py#L140-L160)
- Music by [Mitch Murder](https://soundcloud.com/daataa/mitch-murder-mute-city-free)
