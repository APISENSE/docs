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

- [timestamp](#timestamp)

Methods
-------

- [data](#data)

Events
------

- [every](#every)
- [at](#at)
- [once](#once)

Full Example
------------

    var timer = require('timer');

    var dataResult = timer.data();



    timer.every("exampleValue", function(data) {
        recorder.save(data);
        recorder.sync();
    });

    timer.at("exampleValue", function(data) {
        recorder.save(data);
        recorder.sync();
    });

    timer.once("exampleValue", function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


timestamp
=========

> Retrieve the represents the time of the operation..

    timestamp();

Parameters
----------

- None.

Return
------

- __timestamp__ : Long, represents the time of the operation.




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [TimerData](timerData.html)
 
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
