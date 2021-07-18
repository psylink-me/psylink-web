---
title: "Neurofeedback: Training in both directions"
slug: neurofeedback-idea
date: 2021-07-17
---

For now, the training of neural networks mostly happens on the AI side.  The
human makes arm gestures and presses keys on the keyboard.  This provides the
input (electrode and
[IMU](https://en.wikipedia.org/wiki/Inertial_measurement_unit) signals) as well
as the output/labels (keyboard actions) to the artificial neural network, which then
learns the correlation between the two through
[supervised](https://en.wikipedia.org/wiki/Supervised_learning) [gradient
descent](https://en.wikipedia.org/wiki/Gradient_descent).

Now I'm looking into how to train both the neural network of the AI as well as
the nervous system of the user through
[neurofeedback](https://en.wikipedia.org/wiki/Neurofeedback), that is, by
making the user more aware of their neural signals, which in turn allows them
to fine-tune these.

My hope is that this will make up for the low quality of information that's
available to the AI, due to noise, attenuation, and the low number/quality of
electrodes.  The user neither knows what signals the electrodes can access, nor
how to willingly produce movements that create these signals.  Some gestures
work well, while others can't be detected at all, so the best bet is to use
forceful gestures with maximal muscle activation.  But if there was some sort
of feedback to the user, like a visualization of the data that the neural
network is extracting, the user could focus on the movements that work, and
gradually lower the intensity, perhaps to the point where no actual movement is
required anymore.

Of course there is already some feedback about the signals:  The [PsyLink
UI](/s3) shows the amplitude of each electrode in a rolling graph, and the
GNURadio application shows detailed plots of the raw signals, both of which
already help determining which movements will work for gestures and which will
not.  But the AI can of course combine, cross-correlate, filter, convolve and
deconvolve the signals, which enables it to extract information that a human
won't see in the raw signal data.

Ultimately, the goal is that the user learns to, on demand, fire off just
enough neurons that PsyLink can pick up the signal and trigger the intended key
press without any visible movement of the arm.

## Approach

As described above, simply presenting the user with the raw electrode data is
insufficient.  A machine-learning approach will likely be optimal here, to
overcome the preconceptions of a top-down designer.  Since we already have an
artificial neural network, why not use that one to generate the visualizations
too?

In my current version of this idea:

1. The user needs to invent some arbitrary gesture that should correspond to
   the action "Press key 'A'".
2. The user is repeatedly asked to perform the gesture by the UI
    - At random intervals
    - For random durations
    - With 2-3 seconds of heads-up warning to account for reaction time
    - In between the gestures, the user should perform random other activities,
      but never do the gesture without being asked by the UI
3. The AI is trained on the fly with
    - Electrode signals as input
    - A binary label of "Key 'A' pressed" vs. "Key 'A' not pressed" as output
    - Each data point is added randomly (80:20) to the training or validation dataset
    - After X seconds of collecting data, the AI is trained for Y epochs
4. Every Z milliseconds, the AI is asked to predict the output from the current
   input, and the **neural activations of the last non-output layer of the NN
   are presented to the user visually**, along with the predicted output.
    - The visualization could be a heatmap or a scatterplot, for example
    - The visualization should cover a large dynamic range (both small changes
      and large changes to the values should be easily visible)
5. Using the feedback, the user can tweak their gesture as desired, to e.g.
    - Minimize the movement required to trigger the key
    - Maximize the reliability with which the key press is predicted
5. Over time, old data is dropped from the NN training to refine the
   visualization and to keep the training time short.

Once the user is ready, they can add a second action like "Press key 'B'" and
so on.
