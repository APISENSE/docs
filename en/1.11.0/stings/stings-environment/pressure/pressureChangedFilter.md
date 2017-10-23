---
layout: post
title: PressureChanged
---

> Filters are used for specifying the behavior on the pressure acquisition.

Keywords are `above`, `delta`, `period` and `under`

above (Double):

- Minimal pressure  to trigger the event (default: 0 hPa)

delta (Double):

- Minimal pressure change to trigger the event (default: 200 hPa)

period (Integer):

- Time to wait between two captures in microseconds (default: 100 ms)

under (Double):

- Maximum pressure to trigger the event (default: infinity)

