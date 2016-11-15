---
layout: post
title: Timer
---

> Handle operation on timer sensor.

Usage
-----

`timer` keyword is needed to instanciate this sting.

    var timer = require('timer');

Data accessors
--------------

- [data](#data)

Events
------

- [every](#every)
- [at](#at)
- [once](#once)

Full Example
------------

    var timer = require('timer');
    var recorder = require('recorder');
    var timer = require('timer');

    var everyFilters = {
        "time": "exampleValue"
    };
    var atFilters = {
        "time": "exampleValue"
    };
    var onceFilters = {
        "time": "exampleValue"
    };

    recorder.save({
        'json' : timer.data()
    });

    timer.every(filters,function(data)) {
        recorder.save(data);
    });

    timer.at(filters,function(data)) {
        recorder.save(data);
    });

    timer.once(filters,function(data)) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

data
====

> Retrieve all the current information about the timer.

    data();

Parameters
----------

- None.

Return
------

- __data__ : [TimerData](timerData.html), object containing all information about the current timer status.


every
=====

> Starts a listener on the timer  and executes some actions when it changes.

    every(filters, callback);

Parameters
----------

- __[filters](everyFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [TimerData](timerData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

at
==

> Starts a listener on the timer  and executes some actions when it changes.

    at(filters, callback);

Parameters
----------

- __[filters](atFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [TimerData](timerData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

once
====

> Starts a listener on the timer  and executes some actions when it changes.

    once(filters, callback);

Parameters
----------

- __[filters](onceFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [TimerData](timerData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
