---
layout: post
title: Timer
---

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

at
==

Execute some operations repeatedly at specific time.

    var timer = require('timer');
    timer.every(time, function(event) {
    	// Do something awesome !
    });

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), execution clock.
- __event__ : function(data), callback function giving access to methods from an event object. 

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.

Full Example
------------

    var timer = require('timer');
    var token = timer.at('12:01 PM', function(event) {
    	sting.method();
    });
    token.cancel();

every
=====

Execute some operations repeatedly every specified time.

    var timer = require('timer');
    timer.every(time, function(event) {
    	// Do something awesome !
    });

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), interval of time between every execution.
- __event__ : function(data), callback function giving access to methods from an event object. 

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.

Full Example
------------

    var timer = require('timer');
    var token = timer.every('10s', function(event) {
    	sting.method();
    });
    token.cancel();

once
====

Execute some operations once at specific time.

    var timer = require('timer');
    timer.once(time, function(event) {
    	// Do something awesome !
    });

Parameters
----------

- __time__ : [Time String](../../extra/timeScheduleFormat.html), execution clock.
- __event__ : function(data), callback function giving access to methods from an event object. 

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel scheduling.

Full Example
------------

    var timer = require('timer');
    var token = timer.once('12:01 PM', function(event) {
    	sting.method();
    });
    token.cancel();
