---
layout: post
title: Proximity
---

> Handle operation on proximity sensor.

Usage
-----

`proximity` keyword is needed to instanciate this sting.

    var proximity = require('proximity');


Data accessors
--------------
 
- [accuracy](#accuracy)
- [distance](#distance)
- [isDistance](#isdistance)
- [model](#model)
- [timestamp](#timestamp)
- [vendor](#vendor)
- [version](#version)

Methods
-------

- [data](#data)

Events
------

- [onDistanceChanged](#ondistancechanged)

Full Example
------------

    var proximity = require('proximity');
    var recorder = require('recorder');

    var dataResult = proximity.data();


    recorder.save({
        'accuracy' : proximity.accuracy(),
        'CLOSE Distance' : proximity.isDistance(proximity.CLOSE),
        'model' : proximity.model(),
        'timestamp' : proximity.timestamp(),
        'vendor' : proximity.vendor(),
        'version' : proximity.version(),
        'json' : proximity.data()
    });

    proximity.onDistanceChanged(exampleValue, function(data) {
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

distance
========

> Retrieve the Determine the distance to an obstacle.

    distance();

Parameters
----------

- None.

Return
------

- __distance__ : [ProximityDistance](proximityDistance.html), Determine the distance to an obstacle

isDistance
==========

> Test the current distance value against the given one.

    isDistance(value);

Parameters
----------

- __value__ : [ProximityDistance](proximityDistance.html), type of distance to test.

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
 - [ProximityData](proximityData.html)
 
onDistanceChanged
=================

> Starts a listener on the proximity distance and executes some actions when it changes.

    onDistanceChanged(filters, callback);

Parameters
----------

- __[filters](distanceChangedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [ProximityData](proximityData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
