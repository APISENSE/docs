---
layout: post
title: LocationChanged
---

> Filters are used for specifying the behavior on the location acquisition.

Keywords are `distance`, `mode` and `period`

distance (Double):

- The minimal distance in meters between two triggered locations (50 meters by default)

mode (LocationMode):

- The GPS "mode" (PASSIVE by default)

period (String):

- The maximal period of time between two triggered locations, using Time syntax (e.g. '5 min')

