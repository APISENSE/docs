---
layout: post
title: Device
---

> Handle operation on device sensor.

Usage
-----

`device` keyword is needed to instanciate this sting.

    var device = require('device');


Data accessors
--------------

- [manufacturer](#manufacturer)
- [model](#model)
- [os](#os)
- [resolution](#resolution)
- [rotation](#rotation)
- [screenSize](#screensize)
- [timestamp](#timestamp)
- [version](#version)

Methods
-------

- [data](#data)

Full Example
------------

    var device = require('device');
    var recorder = require('recorder');

    var dataResult = device.data();


    recorder.save({
        'manufacturer' : device.manufacturer(),
        'model' : device.model(),
        'os' : device.os(),
        'resolution' : device.resolution(),
        'rotation' : device.rotation(),
        'screenSize' : device.screenSize(),
        'timestamp' : device.timestamp(),
        'version' : device.version(),
        'json' : device.data()
    });


---


manufacturer
============

> Retrieve the Identity of the phone manufacturer.

    manufacturer();

Parameters
----------

- None.

Return
------

- __manufacturer__ : String, Identity of the phone manufacturer

model
=====

> Retrieve the Model of the phone.

    model();

Parameters
----------

- None.

Return
------

- __model__ : String, Model of the phone

os
==

> Retrieve the Operating system of the device, (e.g. iOS, Android).

    os();

Parameters
----------

- None.

Return
------

- __os__ : String, Operating system of the device, (e.g. iOS, Android)

resolution
==========

> Retrieve the Resolution of the screen.

    resolution();

Parameters
----------

- None.

Return
------

- __resolution__ : String, Resolution of the screen

rotation
========

> Retrieve the Rotation in degrees of the screen.

    rotation();

Parameters
----------

- None.

Return
------

- __rotation__ : Integer, Rotation in degrees of the screen

screenSize
==========

> Retrieve the Diagonal size of the screen in inches.

    screenSize();

Parameters
----------

- None.

Return
------

- __screenSize__ : Double, Diagonal size of the screen in inches

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

version
=======

> Retrieve the Current version of the operating system.

    version();

Parameters
----------

- None.

Return
------

- __version__ : String, Current version of the operating system




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [DeviceData](deviceData.html)
 
