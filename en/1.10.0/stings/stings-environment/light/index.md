---
layout: post
title: Light
---

> Handle operation on light sensor.

Usage
-----

`light` keyword is needed to instanciate this sting.

    var light = require('light');


Data accessors
--------------

- [accuracy](#accuracy)
- [luminosity](#luminosity)
- [luminosityDelta](#luminositydelta)
- [model](#model)
- [timestamp](#timestamp)
- [vendor](#vendor)
- [version](#version)

Methods
-------

- [data](#data)

Events
------

- [onLuminosityDetected](#onluminositydetected)

Full Example
------------

    var light = require('light');
    var recorder = require('recorder');

    var dataResult = light.data();

    var luminosityDetectedFilters = {
        "period": exampleValue,
        "above": exampleValue,
        "under": exampleValue,
        "delta": exampleValue
    };

    recorder.save({
        'accuracy' : light.accuracy(),
        'luminosity' : light.luminosity(),
        'luminosityDelta' : light.luminosityDelta(),
        'model' : light.model(),
        'timestamp' : light.timestamp(),
        'vendor' : light.vendor(),
        'version' : light.version(),
        'json' : light.data()
    });

    light.onLuminosityDetected(luminosityDetectedFilters, function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


accuracy
========

> Retrieve the Sensor's current accuracy.

    accuracy();

Parameters
----------

- None.

Return
------

- __accuracy__ : SensorAccuracy, Sensor's current accuracy

luminosity
==========

> Retrieve the Luminosity returned by the phone (lx).

    luminosity();

Parameters
----------

- None.

Return
------

- __luminosity__ : Double, Luminosity returned by the phone (lx)

luminosityDelta
===============

> Retrieve the Difference between the last luminosity and the current one.

    luminosityDelta();

Parameters
----------

- None.

Return
------

- __luminosityDelta__ : Double, Difference between the last luminosity and the current one

model
=====

> Retrieve the Sensor's model name.

    model();

Parameters
----------

- None.

Return
------

- __model__ : String, Sensor's model name

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

vendor
======

> Retrieve the Sensor's vendor name.

    vendor();

Parameters
----------

- None.

Return
------

- __vendor__ : String, Sensor's vendor name

version
=======

> Retrieve the Version of this sensor.

    version();

Parameters
----------

- None.

Return
------

- __version__ : Integer, Version of this sensor




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [LightData](lightData.html)
 
onLuminosityDetected
====================

> Starts a listener on the light luminosity and executes some actions when it changes.

    onLuminosityDetected(filters, callback);

Parameters
----------

- __[filters](luminosityDetectedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [LightData](lightData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
