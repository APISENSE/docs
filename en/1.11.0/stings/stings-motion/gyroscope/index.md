---
layout: post
title: Gyroscope
---

> Handle operation on gyroscope sensor.

Usage
-----

`gyroscope` keyword is needed to instanciate this sting.

    var gyroscope = require('gyroscope');


Data accessors
--------------

- [accuracy](#accuracy)
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

- [onRotationDetected](#onrotationdetected)

Full Example
------------

    var gyroscope = require('gyroscope');
    var recorder = require('recorder');

    var dataResult = gyroscope.data();

    var rotationDetectedFilters = {
        "period": exampleValue,
        "speed": exampleValue
    };

    recorder.save({
        'accuracy' : gyroscope.accuracy(),
        'model' : gyroscope.model(),
        'timestamp' : gyroscope.timestamp(),
        'vendor' : gyroscope.vendor(),
        'version' : gyroscope.version(),
        'x' : gyroscope.x(),
        'y' : gyroscope.y(),
        'z' : gyroscope.z(),
        'json' : gyroscope.data()
    });

    gyroscope.onRotationDetected(rotationDetectedFilters, function(data) {
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

> Retrieve the Angular speed around the x axis (rad/s).

    x();

Parameters
----------

- None.

Return
------

- __x__ : Double, Angular speed around the x axis (rad/s)

y
=

> Retrieve the Angular speed around the y axis (rad/s).

    y();

Parameters
----------

- None.

Return
------

- __y__ : Double, Angular speed around the y axis (rad/s)

z
=

> Retrieve the Angular speed around the z axis (rad/s).

    z();

Parameters
----------

- None.

Return
------

- __z__ : Double, Angular speed around the z axis (rad/s)




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
- [GyroscopeData](gyroscopeData.html)
 
onRotationDetected
==================

> Starts a listener on the gyroscope rotation and executes some actions when it changes.

    onRotationDetected(filters, callback);

Parameters
----------

- __[filters](rotationDetectedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [GyroscopeData](gyroscopeData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
