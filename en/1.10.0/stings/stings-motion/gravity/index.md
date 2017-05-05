---
layout: post
title: Gravity
---

> Handle operation on gravity sensor.

Usage
-----

`gravity` keyword is needed to instanciate this sting.

    var gravity = require('gravity');


Data accessors
--------------
 
- [accuracy](#accuracy)
- [isPosition](#isposition)
- [model](#model)
- [position](#position)
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

- [onPositionChanged](#onpositionchanged)

Full Example
------------

    var gravity = require('gravity');
    var recorder = require('recorder');

    var dataResult = gravity.data();


    recorder.save({
        'accuracy' : gravity.accuracy(),
        'model' : gravity.model(),
        'BACK Position' : gravity.isPosition(gravity.BACK),
        'timestamp' : gravity.timestamp(),
        'vendor' : gravity.vendor(),
        'version' : gravity.version(),
        'x' : gravity.x(),
        'y' : gravity.y(),
        'z' : gravity.z(),
        'json' : gravity.data()
    });

    gravity.onPositionChanged(exampleValue, function(data) {
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

isPosition
==========

> Test the current position value against the given one.

    isPosition(value);

Parameters
----------

- __value__ : [GravityPosition](gravityPosition.html), type of position to test.

Return
------

- Boolean

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

position
========

> Retrieve the A human readable description of the device part oriented towards the ground.

    position();

Parameters
----------

- None.

Return
------

- __position__ : [GravityPosition](gravityPosition.html), A human readable description of the device part oriented towards the ground

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

> Retrieve the Gravity force along the x axis.

    x();

Parameters
----------

- None.

Return
------

- __x__ : Double, Gravity force along the x axis

y
=

> Retrieve the Gravity force along the y axis.

    y();

Parameters
----------

- None.

Return
------

- __y__ : Double, Gravity force along the y axis

z
=

> Retrieve the Gravity force along the z axis.

    z();

Parameters
----------

- None.

Return
------

- __z__ : Double, Gravity force along the z axis




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [GravityData](gravityData.html)
 
onPositionChanged
=================

> Starts a listener on the gravity position and executes some actions when it changes.

    onPositionChanged(filters, callback);

Parameters
----------

- __[filters](positionChangedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [GravityData](gravityData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
