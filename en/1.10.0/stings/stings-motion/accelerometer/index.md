---
layout: post
title: Accelerometer
---

> Handle operation on accelerometer sensor.

Usage
-----

`accelerometer` keyword is needed to instanciate this sting.

    var accelerometer = require('accelerometer');


Data accessors
--------------

- [accuracy](#accuracy)
- [deltaX](#deltax)
- [deltaY](#deltay)
- [deltaZ](#deltaz)
- [minDelay](#mindelay)
- [model](#model)
- [timestamp](#timestamp)
- [vendor](#vendor)
- [version](#version)
- [x](#x)
- [y](#y)
- [z](#z)

Methods
-------

- [data](#data)

Events
------

- [onAccelerationDetected](#onaccelerationdetected)

Full Example
------------

    var accelerometer = require('accelerometer');
    var recorder = require('recorder');

    var dataResult = accelerometer.data();

    var accelerationDetectedFilters = {
        "period": exampleValue,
        "vector": exampleValue
    };

    recorder.save({
        'accuracy' : accelerometer.accuracy(),
        'deltaX' : accelerometer.deltaX(),
        'deltaY' : accelerometer.deltaY(),
        'deltaZ' : accelerometer.deltaZ(),
        'minDelay' : accelerometer.minDelay(),
        'model' : accelerometer.model(),
        'timestamp' : accelerometer.timestamp(),
        'vendor' : accelerometer.vendor(),
        'version' : accelerometer.version(),
        'x' : accelerometer.x(),
        'y' : accelerometer.y(),
        'z' : accelerometer.z(),
        'json' : accelerometer.data()
    });

    accelerometer.onAccelerationDetected(accelerationDetectedFilters, function(data) {
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

deltaX
======

> Retrieve the Absolute difference between the two last traces on x axis.

    deltaX();

Parameters
----------

- None.

Return
------

- __deltaX__ : Double, Absolute difference between the two last traces on x axis

deltaY
======

> Retrieve the Absolute difference between the two last traces on y axis.

    deltaY();

Parameters
----------

- None.

Return
------

- __deltaY__ : Double, Absolute difference between the two last traces on y axis

deltaZ
======

> Retrieve the Absolute difference between the two last traces on z axis.

    deltaZ();

Parameters
----------

- None.

Return
------

- __deltaZ__ : Double, Absolute difference between the two last traces on z axis

minDelay
========

> Retrieve the Minimal time to wait between two events in microseconds.

    minDelay();

Parameters
----------

- None.

Return
------

- __minDelay__ : Integer, Minimal time to wait between two events in microseconds

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

x
=

> Retrieve the Acceleration force along the x axis.

    x();

Parameters
----------

- None.

Return
------

- __x__ : Double, Acceleration force along the x axis

y
=

> Retrieve the Acceleration force along the y axis.

    y();

Parameters
----------

- None.

Return
------

- __y__ : Double, Acceleration force along the y axis

z
=

> Retrieve the Acceleration force along the z axis.

    z();

Parameters
----------

- None.

Return
------

- __z__ : Double, Acceleration force along the z axis




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [AccelerometerData](accelerometerData.html)
 
onAccelerationDetected
======================

> Starts a listener on the accelerometer acceleration and executes some actions when it changes.

    onAccelerationDetected(filters, callback);

Parameters
----------

- __[filters](accelerationDetectedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [AccelerometerData](accelerometerData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
