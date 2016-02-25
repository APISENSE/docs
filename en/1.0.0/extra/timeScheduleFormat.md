---
layout: post
---

Time
====

> Enables to generate time period or moment in day from common language.

Syntaxes
--------

- [duration](#duration)
- [time of day](#time-of-day)

Duration
========

> Defines a time period with common language.

The string recognition use the regex `^\s*(\d+)\s*(\w+)\s*$`,
with the keywords defined in the below table:

| Keywords  	| 
| ------------- |
| s, sec, second, seconds   |
| m, min, minute, minutes   |
| h, hour, hours  			|
| d, day, days,  			|

Examples
--------

	4s
	10 hours
	2 d

Time of day
===========

> Defines a specific moment in a day.

The string recognition use the regex `^\s*(\d{1,2})\s*:\s*(\d{2})\s*([aApP][mM])\s*$`

Examples
--------

	4:00 am
	13:37  pM
	1 : 02 Am
