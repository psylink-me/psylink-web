---
title: Power Module 1
slug: bp1
image: boards/psylink6_powermodule.jpg
date: 2021-05-09
blog: power
---

## Notes

- There are actually two CR2032 coin cells in the battery slot
- There's an optional second green pin for the ground electrode
- If you're wondering why I'm using a big ass quad opamp when I just need a single output: I don't have a smaller one atm.
- I totally need to move this to a SMD PCB in the long run, this is still too bulky, but will do for now. It's about the dimensions of a 9V battery.

## Output pins

- Black: Ground
- Red: V+ = ~6V
- Green: Vref = V+/2 = ~3V (reference signal)
