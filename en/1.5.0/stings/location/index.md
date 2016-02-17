---
layout: post
---

Location
========

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

Full Example
------------

    var gps = require('location');
    var recorder = require('recorder');
    var timer = require('timer');

    recorder.save({
        'accuracy' : gps.accuracy(),
        'altitude' : gps.altitude(),
        'bearing' : gps.bearing(),
        'latitude' : gps.latitude(),
        'longitude' : gps.longitude(),
        'mode' : gps.mode(),
        'source' : gps.source(),
        'speed' : gps.speed(),
        'json' : data(),
    });

    gps.onLocationChanged(params, function(data) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        timer.sync();
    });

accuracy
========

> Retrieve the accuracy of the geolocalization measurement.

    accuracy()

Parameters
----------

- None.

Return
------

- __distance__ : Double, geolocalization accuracy in meters.

altitude
========

> Retrieve the altitude of the geolocalization measurement.

    altitude()

Parameters
----------

- None.

Return
------

- __altitude__ : Double, geolocalization altitude in meters.

bearing
=======

> Retrieve the bearing of the geolocalization measurement.

    bearing()

Parameters
----------

- None.

Return
------

- __bearing__ : Double, geolocalization bearing in degrees.

data
====

> Retrieve all the current information about the location.

    data()

Parameters
----------

- None.

Return
------

- __data__ : [LocationData](locationData.html), object containing all information about the current location status.

latitude
========

> Retrieve the latitude of the geolocalization measurement.

    latitude()

Parameters
----------

- None.

Return
------

- __latitude__ : Double, geolocalization latitude value.

longitude
=========

> Retrieve the longitude of the geolocalization measurement.

    longitude()

Parameters
----------

- None.

Return
------

- __longitude__ : Double, geolocalization longitude value.

mode
====

> Retrieve the current geolocalization mode used to compute location.

    mode()

Parameters
----------

- None.

Return
------

- __mode__ : [LocationMode](locationMode.html), geolocalization mode used.

source
======

> Retrieve the current geolocalization source used to compute location.

    source()

Parameters
----------

- None.

Return
------

- __source__ : [LocationSource](locationSource.html), geolocalization source used.

speed
=====

> Retrieve the moving speed during the geolocalization measurement.

    speed()

Parameters
----------

- None.

Return
------

- __speed__ : Double, geolocalization altitude in meters.

onLocationChanged
=================

> Start a listener on the location state and execute some actions when it changes.

    onLocationChanged(params, callback)

Parameters
----------

- __params__ : JSON, defines the mode and the minimal distance between each new location. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [LocationData](locationData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.
