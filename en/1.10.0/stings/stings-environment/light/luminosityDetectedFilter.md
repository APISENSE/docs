---
layout: post
title: LuminosityDetected
---

> Filters are used for specifying the behavior on the light acquisition.

Keywords are `above`, `delta`, `period` and `under`

above (Double):

- Minimal luminosity  to trigger the event (default: 0 lx)

delta (Double):

- Minimal luminosity change to trigger the event (default: 200 lx)

period (Integer):

- Time to wait between two captures in microseconds (default: 100 ms)

under (Double):

- Maximum luminosity to trigger the event (default: infinity)

