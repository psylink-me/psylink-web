---
title: Power Module 1
slug: bp1
image: boards/bp1.jpg
date: 2021-05-09
blog: power
circuit: c6
tested: true
---

## Purpose

This implements the power supply module from {{%link "c6"%}} and powers {{%
link "p4" %}}, where it also provides a reference voltage for
{{% link "b1" %}}.

## Notes

- There are actually two CR2032 coin cells in the battery slot
- There's an optional second green pin for the ground electrode
- One small single-output opamp would suffice, but all I had at the time was this LM324 quad opamp.
- Need to move this to a SMD PCB in the long run, this is still too bulky. It's about the dimensions of a 9V battery.

## Output pins

- Black: Ground
- Red: V+ = ~6V
- Green: Vref = V+/2 = ~3V (reference signal)
