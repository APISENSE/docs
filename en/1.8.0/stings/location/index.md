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
- [data](#data)
- [isMode](#ismode)
- [isSource](#issource)
- [latitude](#latitude)
- [longitude](#longitude)
- [mode](#mode)
- [source](#source)
- [speed](#speed)

Events
------

- [onLocationChanged](#onlocationchanged)

Full Example
------------

    var gps = require('location');
    var recorder = require('recorder');
    var timer = require('timer');

    var locationChangedFilters = {
        "mode": gps.ACTIVE,
        "distance": 500,
        "period": "exampleValue"
    };

    recorder.save({
        'accuracy' : gps.accuracy(),
        'altitude' : gps.altitude(),
        'bearing' : gps.bearing(),
        'ACTIVE Mode' : gps.isMode(location.ACTIVE),
        'GPS Source' : gps.isSource(location.GPS),
        'latitude' : gps.latitude(),
        'longitude' : gps.longitude(),
        'mode' : gps.mode(),
        'source' : gps.source(),
        'speed' : gps.speed(),
        'json' : gps.data()
    });

    gps.onLocationChanged(filters,function(data)) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

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

data
====

> Retrieve all the current information about the location.

    data();

Parameters
----------

- None.

Return
------

- __data__ : [LocationData](locationData.html), object containing all information about the current location status.

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


onLocationChanged
=================

> Starts a listener on the location location and executes some actions when it changes.

    onLocationChanged(filters, callback);

Parameters
----------

- __[filters](locationChangedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [LocationData](locationData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
