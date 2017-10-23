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
- [installedApplications](#installedapplications)
- [isLock](#islock)
- [isScreen](#isscreen)
- [lock](#lock)
- [runningApplications](#runningapplications)
- [runningServices](#runningservices)
- [screen](#screen)
- [timestamp](#timestamp)

Methods
-------

- [applicationUsageStats](#applicationusagestats)
- [applicationUsageStatsForPackage](#applicationusagestatsforpackage)
- [category](#category)
- [data](#data)
- [permissions](#permissions)
- [uid](#uid)

Events
------

- [onScreenUnlocked](#onscreenunlocked)
- [onScreenStateChanged](#onscreenstatechanged)
- [onForegroundAppChanged](#onforegroundappchanged)

Full Example
------------

    var system = require('system');
    var recorder = require('recorder');

    var applicationUsageStatsResult = system.applicationUsageStats(startTimestamp, endTimestamp);
    var applicationUsageStatsForPackageResult = system.applicationUsageStatsForPackage(startTimestamp, endTimestamp, packageName);
    var categoryResult = system.category(packageName);
    var dataResult = system.data();
    var permissionsResult = system.permissions(packageName);
    var uidResult = system.uid(packageName);


    recorder.save({
        'foreground' : system.foreground(),
        'installedApplications' : system.installedApplications(),
        'LOCKED Lock' : system.isLock(system.LOCKED),
        'runningApplications' : system.runningApplications(),
        'runningServices' : system.runningServices(),
        'ON Screen' : system.isScreen(system.ON),
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

installedApplications
=====================

> Retrieve the Applications installed on the device..

    installedApplications();

Parameters
----------

- None.

Return
------

- __installedApplications__ : List, Applications installed on the device.

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

runningApplications
===================

> Retrieve the Applications running on the device..

    runningApplications();

Parameters
----------

- None.

Return
------

- __runningApplications__ : List, Applications running on the device.

runningServices
===============

> Retrieve the Services running on the device..

    runningServices();

Parameters
----------

- None.

Return
------

- __runningServices__ : List, Services running on the device.

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




applicationUsageStats
=====================

> Get all application usage stats for the given period. The method return null if the user did not allow the application to access the usage stats or if the version of the SDK is not compatible (min. 22).

    applicationUsageStats(startTimestampendTimestamp);

Parameters
----------

- startTimestamp (Long): The start timestamp of the period.
- endTimestamp (Long): The end timestamp of the period.
 
Returns
-------
- Map

applicationUsageStatsForPackage
===============================

> Get the usage stats for the given application and the given period. The method return null if the user did not allow the application to access the usage stats or if the version of the SDK is not compatible (min. 22).

    applicationUsageStatsForPackage(startTimestampendTimestamppackageName);

Parameters
----------

- startTimestamp (Long): The start timestamp of the period.
- endTimestamp (Long): The end timestamp of the period.
- packageName (String): The application/service package name.
 
Returns
-------
- Map

category
========

> Get the app store category for the given package.

    category(packageName);

Parameters
----------

- packageName (String): The application/service package name.
 
Returns
-------
- String

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

permissions
===========

> Get the permissions for the given package.

    permissions(packageName);

Parameters
----------

- packageName (String): The application/service package name.
 
Returns
-------
- List

uid
===

> Get the application/service uid. If the packageName does not found on the phone, null is returned.

    uid(packageName);

Parameters
----------

- packageName (String): The application/service package name.
 
Returns
-------
- Integer
 
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
