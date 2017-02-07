---
layout: post
title: Location
---

> Handle operation on location sensor.

Usage
-----

`location` keyword is needed to instanciate this sting.

    var gps = require('location');

<div class="alert alert-warning" role="warning">WARNING: the JavaScript variable named 'location' is already used by browsers, thus the syntactic check will forbid you to use it.</div>

Data accessors
--------------
  
- [accuracy](#accuracy)
- [altitude](#altitude)
- [bearing](#bearing)
- [isMode](#ismode)
- [isSource](#issource)
- [latitude](#latitude)
- [longitude](#longitude)
- [mode](#mode)
- [source](#source)
- [speed](#speed)
- [timestamp](#timestamp)

Methods
-------

- [data](#data)

Events
------

- [onLocationChanged](#onlocationchanged)

Full Example
------------

    var gps = require('location');
    var recorder = require('recorder');

    var dataResult = gps.data();

    var locationChangedFilters = {
        "mode": gps.ACTIVE,
        "distance": 500,
        "period": "5 min"
    };

    recorder.save({
        'accuracy' : gps.accuracy(),
        'altitude' : gps.altitude(),
        'bearing' : gps.bearing(),
        'latitude' : gps.latitude(),
        'longitude' : gps.longitude(),
        'ACTIVE Mode' : gps.isMode(gps.ACTIVE),
        'GPS Source' : gps.isSource(gps.GPS),
        'speed' : gps.speed(),
        'timestamp' : gps.timestamp(),
        'json' : gps.data()
    });

    gps.onLocationChanged(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


accuracy
========

> Retrieve the Estimated accuracy of this location, in meters.

    accuracy();

Parameters
----------

- None.

Return
------

- __accuracy__ : Double, Estimated accuracy of this location, in meters

altitude
========

> Retrieve the Altitude in meters above the WGS 84 reference ellipsoid.

    altitude();

Parameters
----------

- None.

Return
------

- __altitude__ : Double, Altitude in meters above the WGS 84 reference ellipsoid

bearing
=======

> Retrieve the Bearing in degrees East of true North.

    bearing();

Parameters
----------

- None.

Return
------

- __bearing__ : Double, Bearing in degrees East of true North

isMode
======

> Test the current mode value against the given one.

    isMode(value);

Parameters
----------

- __value__ : [LocationMode](locationMode.html), type of mode to test.

Return
------

- Boolean

isSource
========

> Test the current source value against the given one.

    isSource(value);

Parameters
----------

- __value__ : [LocationSource](locationSource.html), type of source to test.

Return
------

- Boolean

latitude
========

> Retrieve the Latitude in degrees.

    latitude();

Parameters
----------

- None.

Return
------

- __latitude__ : Double, Latitude in degrees

longitude
=========

> Retrieve the Longitude in degrees.

    longitude();

Parameters
----------

- None.

Return
------

- __longitude__ : Double, Longitude in degrees

mode
====

> Retrieve the Fix acquisition mode.

    mode();

Parameters
----------

- None.

Return
------

- __mode__ : [LocationMode](locationMode.html), Fix acquisition mode

source
======

> Retrieve the Source that generated the location fix.

    source();

Parameters
----------

- None.

Return
------

- __source__ : [LocationSource](locationSource.html), Source that generated the location fix

speed
=====

> Retrieve the Speed in meters/second over ground.

    speed();

Parameters
----------

- None.

Return
------

- __speed__ : Double, Speed in meters/second over ground

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
 - [LocationData](locationData.html)
 
onLocationChanged
=================

> Starts a listener on the location location and executes some actions when it changes.

    onLocationChanged(filters, callback);

Parameters
----------

- __[filters](locationChangedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../../extra/callback)__ : Method executed when event triggered, returns [LocationData](locationData.html) object.

Return
------

- __token__ : [Token](../../../extra/token) used for canceling event listener.
