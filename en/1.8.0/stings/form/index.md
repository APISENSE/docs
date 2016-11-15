---
layout: post
title: Form
---

> Handle operation on form sensor.

Usage
-----

`form` keyword is needed to instanciate this sting.

    var form = require('form');

Data accessors
--------------

- [data](#data)
- [results](#results)

Events
------

- [onResult](#onresult)

Full Example
------------

    var form = require('form');
    var recorder = require('recorder');
    var timer = require('timer');


    recorder.save({
        'results' : form.results(),
        'json' : form.data()
    });

    form.onResult(function(data)) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

data
====

> Retrieve all the current information about the form.

    data();

Parameters
----------

- None.

Return
------

- __data__ : [FormData](formData.html), object containing all information about the current form status.

results
=======

> Retrieve the Results of the filled Form.

    results();

Parameters
----------

- None.

Return
------

- __results__ : Map, Results of the filled Form


onResult
========

> Starts a listener on the form result and executes some actions when it changes.

    onResult(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [FormData](formData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
