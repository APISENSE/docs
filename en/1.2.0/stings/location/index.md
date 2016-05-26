---
layout: post
title: Location
---

> Handle operation on location sensor.

Usage
-----

`location` keyword is needed to instanciate this sting.

	var location = require('location');

Data
----

- [accuracy](#accuracy)
- [altitude](#altitude)
- [bearing](#bearing)
- [latitude](#latitude)
- [longitude](#longitude)
- [mode](#mode)
- [source](#source)
- [speed](#speed)

Events
------

- [onLocationChanged](#onlocationchanged)

accuracy
========

> Retrieve the accuracy of the geolocalization measurement.

    var location = require('location');
    location.accuracy();

Parameters
----------

- None.

Return
------

- __distance__ : Double, geolocalization accuracy in meters.

Full Example
------------

    var location = require('location');
    var result = location.accuracy();

altitude
========

> Retrieve the altitude of the geolocalization measurement.

    var location = require('location');
    location.altitude();

Parameters
----------

- None.

Return
------

- __altitude__ : Double, geolocalization altitude in meters.

Full Example
------------

    var location = require('location');
    var result = location.altitude();

bearing
=======

> Retrieve the bearing of the geolocalization measurement.

    var location = require('location');
    location.bearing();

Parameters
----------

- None.

Return
------

- __bearing__ : Double, geolocalization bearing in degrees.

Full Example
------------

    var location = require('location');
    var result = location.accuracy();

data
====

> Retrieve all the current information about the location.

    var location = require('location');
    location.data();

Parameters
----------

- None.

Return
------

- __data__ : [LocationData](locationData.html), object containing all information about the current location status.

Full Example
------------

	var location = require('location');
	var data = location.data();
	var latitude = location.latitude;

latitude
========

> Retrieve the latitude of the geolocalization measurement.

    var location = require('location');
    location.latitude();

Parameters
----------

- None.

Return
------

- __latitude__ : Double, geolocalization latitude value.

Full Example
------------

    var location = require('location');
    var result = location.latitude();
longitude
=========

> Retrieve the longitude of the geolocalization measurement.

    var location = require('location');
    location.longitude();

Parameters
----------

- None.

Return
------

- __longitude__ : Double, geolocalization longitude value.

Full Example
------------

    var location = require('location');
    var result = location.longitude();

mode
====

> Retrieve the current geolocalization mode used to compute location.

    var location = require('location');
    location.mode();

Parameters
----------

- None.

Return
------

- __mode__ : [LocationMode](locationMode.html), geolocalization mode used.

Full Example
------------

    var location = require('location');
    var result = location.mode();

source
======

> Retrieve the current geolocalization source used to compute location.

    var location = require('location');
    location.source();

Parameters
----------

- None.

Return
------

- __source__ : [LocationSource](locationSource.html), geolocalization source used.

Full Example
------------

    var location = require('location');
    var result = location.source();


speed
=====

> Retrieve the moving speed during the geolocalization measurement.

    var location = require('location');
    location.speed();

Parameters
----------

- None.

Return
------

- __speed__ : Double, geolocalization altitude in meters.

Full Example
------------

    var location = require('location');
    var result = location.altitude();

onLocationChanged
=================

> Start a listener on the location state and execute some actions when it changes.

    var location = require('location');
    location.onLocationChanged(params, function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __params__ : JSON, defines the mode and the minimal distance between each new location. Can be empty.
- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : locationData, object containing all information about the new location status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.

Full Example
------------

    var location = require('location');
    location.onLevelChanged({mode: location.ACTIVE, distance: 10}, function(data) {
        var newLatitude = data.latitude;
    });
