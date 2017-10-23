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

- [board](#board)
- [brand](#brand)
- [cpuAbi](#cpuabi)
- [device](#device)
- [display](#display)
- [manufacturer](#manufacturer)
- [model](#model)
- [os](#os)
- [product](#product)
- [resolution](#resolution)
- [rotation](#rotation)
- [screenSize](#screensize)
- [timestamp](#timestamp)
- [versionRelease](#versionrelease)
- [versionSdk](#versionsdk)

Methods
-------

- [data](#data)

Full Example
------------

    var device = require('device');
    var recorder = require('recorder');

    var dataResult = device.data();


    recorder.save({
        'board' : device.board(),
        'brand' : device.brand(),
        'cpuAbi' : device.cpuAbi(),
        'device' : device.device(),
        'display' : device.display(),
        'manufacturer' : device.manufacturer(),
        'model' : device.model(),
        'os' : device.os(),
        'product' : device.product(),
        'resolution' : device.resolution(),
        'rotation' : device.rotation(),
        'screenSize' : device.screenSize(),
        'timestamp' : device.timestamp(),
        'versionRelease' : device.versionRelease(),
        'versionSdk' : device.versionSdk(),
        'json' : device.data()
    });


---


board
=====

> Retrieve the The name of the underlying board, like "goldfish".

    board();

Parameters
----------

- None.

Return
------

- __board__ : String, The name of the underlying board, like "goldfish"

brand
=====

> Retrieve the The consumer-visible brand with which the product/hardware will be associated, if any.

    brand();

Parameters
----------

- None.

Return
------

- __brand__ : String, The consumer-visible brand with which the product/hardware will be associated, if any

cpuAbi
======

> Retrieve the The name of the instruction set (CPU type + ABI convention) of native code.

    cpuAbi();

Parameters
----------

- None.

Return
------

- __cpuAbi__ : String, The name of the instruction set (CPU type + ABI convention) of native code

device
======

> Retrieve the The name of the industrial design.

    device();

Parameters
----------

- None.

Return
------

- __device__ : String, The name of the industrial design

display
=======

> Retrieve the A build ID string meant for displaying to the user.

    display();

Parameters
----------

- None.

Return
------

- __display__ : String, A build ID string meant for displaying to the user

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

product
=======

> Retrieve the The name of the overall product.

    product();

Parameters
----------

- None.

Return
------

- __product__ : String, The name of the overall product

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

versionRelease
==============

> Retrieve the The user-visible version string.  E.g., "1.0" or "3.4b5".

    versionRelease();

Parameters
----------

- None.

Return
------

- __versionRelease__ : String, The user-visible version string.  E.g., "1.0" or "3.4b5"

versionSdk
==========

> Retrieve the The user-visible SDK version of the framework.

    versionSdk();

Parameters
----------

- None.

Return
------

- __versionSdk__ : Integer, The user-visible SDK version of the framework




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
 
