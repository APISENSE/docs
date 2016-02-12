---
layout: post
---

Timer
=====

> Schedule stings operations.

Usage
-----

`timer` keyword is needed to instanciate this sting.

	var timer = require('timer');

Events
------

- [at](#at)
- [every](#every)
- [once](#once)


Full Example
------------

    var timer = require('timer');
    var battery = require('battery');
    var recorder = require('recorder');

    timer.at('00:00 PM', function(event) {
        recorder.sync();
    });

    timer.every('10s', function(event) {
        recorder.save({
            'data' : battery.data()
        })
    });

    timer.once('16:00 PM', function(event) {
        recorder.save({
            'data' : battery.data()
        })
    });

at
==

Execute some operations repeatedly at specific time.

    at(time, callback)

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), execution clock.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns current time object.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.

every
=====

Execute some operations repeatedly every specified time.

    every(time, callback)

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), interval of time between every execution.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns current time object.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.

once
====

Execute some operations once at specific time.

    once(time, callback)

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), execution clock.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns current time object.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.