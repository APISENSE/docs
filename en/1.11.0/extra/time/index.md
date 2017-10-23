---
layout: post
title: Time
---

> Supported time units.

Regex used: `^\s*(\d+)\s*(\w+)\s*$`

| Keywords  	| 
| ------------- |
| ms, millisecond, milliseconds   |
| s, sec, second, seconds   |
| m, min, minute, minutes   |
| h, hour, hours  			|
| d, day, days,  			|

Examples
--------

	4s
	10 hours
	2 d

> Supported time format.

Regex used: `^\s*(\d{1,2})\s*:\s*(\d{2})\s*([aApP][mM])\s*$`

Examples
--------

	4:00 am
	03:37  pM
	1 : 02 Am
