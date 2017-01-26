---
layout: post
title: System
---

> Handle operation on system sensor.

Usage
-----

`system` keyword is needed to instanciate this sting.

    var system = require('system');


Data accessors
--------------
  
- [foreground](#foreground)
- [isLock](#islock)
- [isScreen](#isscreen)
- [lock](#lock)
- [screen](#screen)
- [services](#services)
- [timestamp](#timestamp)

Methods
-------

- [data](#data)

Events
------

- [onScreenUnlocked](#onscreenunlocked)
- [onScreenStateChanged](#onscreenstatechanged)
- [onForegroundAppChanged](#onforegroundappchanged)

Full Example
------------

    var system = require('system');
    var recorder = require('recorder');

    var dataResult = system.data();


    recorder.save({
        'foreground' : system.foreground(),
        'LOCKED Lock' : system.isLock(system.LOCKED),
        'ON Screen' : system.isScreen(system.ON),
        'services' : system.services(),
        'timestamp' : system.timestamp(),
        'json' : system.data()
    });

    system.onScreenUnlocked(function(data) {
        recorder.save(data);
        recorder.sync();
    });

    system.onScreenStateChanged(function(data) {
        recorder.save(data);
        recorder.sync();
    });

    system.onForegroundAppChanged(function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


foreground
==========

> Retrieve the Name of the foreground application.

    foreground();

Parameters
----------

- None.

Return
------

- __foreground__ : String, Name of the foreground application

isLock
======

> Test the current lock value against the given one.

    isLock(value);

Parameters
----------

- __value__ : [SystemLock](systemLock.html), type of lock to test.

Return
------

- Boolean

isScreen
========

> Test the current screen value against the given one.

    isScreen(value);

Parameters
----------

- __value__ : [SystemScreen](systemScreen.html), type of screen to test.

Return
------

- Boolean

lock
====

> Retrieve the Current locking state of the screen, NOT_SECURED means that no protection is set.

    lock();

Parameters
----------

- None.

Return
------

- __lock__ : [SystemLock](systemLock.html), Current locking state of the screen, NOT_SECURED means that no protection is set

screen
======

> Retrieve the Current illumination state of the screen.

    screen();

Parameters
----------

- None.

Return
------

- __screen__ : [SystemScreen](systemScreen.html), Current illumination state of the screen

services
========

> Retrieve the Services running on the device..

    services();

Parameters
----------

- None.

Return
------

- __services__ : List, Services running on the device.

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
 - [SystemData](systemData.html)
 
onScreenUnlocked
================

> Starts a listener on the system screen and executes some actions when it changes.

    onScreenUnlocked(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [SystemData](systemData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onScreenStateChanged
====================

> Starts a listener on the system screenState and executes some actions when it changes.

    onScreenStateChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [SystemData](systemData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onForegroundAppChanged
======================

> Starts a listener on the system foregroundApp and executes some actions when it changes.

    onForegroundAppChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [SystemData](systemData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
