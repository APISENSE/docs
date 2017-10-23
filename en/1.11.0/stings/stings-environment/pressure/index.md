---
layout: post
title: Pressure
---

> Handle operation on pressure sensor.

Usage
-----

`pressure` keyword is needed to instanciate this sting.

    var pressure = require('pressure');


Data accessors
--------------

- [accuracy](#accuracy)
- [model](#model)
- [pressure](#pressure)
- [pressureDelta](#pressuredelta)
- [timestamp](#timestamp)
- [vendor](#vendor)
- [version](#version)

Methods
-------

- [data](#data)

Events
------

- [onPressureChanged](#onpressurechanged)

Full Example
------------

    var pressure = require('pressure');
    var recorder = require('recorder');

    var dataResult = pressure.data();

    var pressureChangedFilters = {
        "period": exampleValue,
        "above": exampleValue,
        "under": exampleValue,
        "delta": exampleValue
    };

    recorder.save({
        'accuracy' : pressure.accuracy(),
        'model' : pressure.model(),
        'pressure' : pressure.pressure(),
        'pressureDelta' : pressure.pressureDelta(),
        'timestamp' : pressure.timestamp(),
        'vendor' : pressure.vendor(),
        'version' : pressure.version(),
        'json' : pressure.data()
    });

    pressure.onPressureChanged(pressureChangedFilters, function(data) {
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

pressure
========

> Retrieve the Pressure returned by the phone (hPa).

    pressure();

Parameters
----------

- None.

Return
------

- __pressure__ : Double, Pressure returned by the phone (hPa)

pressureDelta
=============

> Retrieve the Difference between the last pressure and the current one.

    pressureDelta();

Parameters
----------

- None.

Return
------

- __pressureDelta__ : Double, Difference between the last pressure and the current one

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
- [PressureData](pressureData.html)
 
onPressureChanged
=================

> Starts a listener on the pressure pressure and executes some actions when it changes.

    onPressureChanged(filters, callback);

Parameters
----------

- __[filters](pressureChangedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [PressureData](pressureData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
