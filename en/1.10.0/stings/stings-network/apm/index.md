---
layout: post
title: Apm
---

> Handle operation on apm sensor.

Usage
-----

`apm` keyword is needed to instanciate this sting.

    var apm = require('apm');


Data accessors
--------------

- [ping](#ping)
- [size](#size)
- [speed](#speed)
- [time](#time)
- [timestamp](#timestamp)
- [traceroute](#traceroute)
- [ttl](#ttl)
- [url](#url)

Methods
-------

- [data](#data)

Events
------

- [onScanCompleted](#onscancompleted)
- [onDownloadCompleted](#ondownloadcompleted)
- [onUploadCompleted](#onuploadcompleted)

Full Example
------------

    var apm = require('apm');
    var recorder = require('recorder');

    var dataResult = apm.data();

    var uploadCompletedFilters = {
        "url": "exampleValue",
        "protocol": "exampleValue",
        "username": "exampleValue",
        "password": "exampleValue",
        "size": exampleValue
    };

    recorder.save({
        'ping' : apm.ping(),
        'size' : apm.size(),
        'speed' : apm.speed(),
        'time' : apm.time(),
        'timestamp' : apm.timestamp(),
        'traceroute' : apm.traceroute(),
        'ttl' : apm.ttl(),
        'url' : apm.url(),
        'json' : apm.data()
    });

    apm.onScanCompleted("exampleValue", function(data) {
        recorder.save(data);
        recorder.sync();
    });

    apm.onDownloadCompleted("exampleValue", function(data) {
        recorder.save(data);
        recorder.sync();
    });

    apm.onUploadCompleted(uploadCompletedFilters, function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


ping
====

> Retrieve the The last ping.

    ping();

Parameters
----------

- None.

Return
------

- __ping__ : Long, The last ping

size
====

> Retrieve the Size of the last uploaddownload.

    size();

Parameters
----------

- None.

Return
------

- __size__ : Float, Size of the last uploaddownload

speed
=====

> Retrieve the Speed of last upload/download.

    speed();

Parameters
----------

- None.

Return
------

- __speed__ : Float, Speed of last upload/download

time
====

> Retrieve the Time taken by the last upload/download.

    time();

Parameters
----------

- None.

Return
------

- __time__ : Float, Time taken by the last upload/download

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

traceroute
==========

> Retrieve the Last traceroute data.

    traceroute();

Parameters
----------

- None.

Return
------

- __traceroute__ : List, Last traceroute data

ttl
===

> Retrieve the The last found TTL.

    ttl();

Parameters
----------

- None.

Return
------

- __ttl__ : Integer, The last found TTL

url
===

> Retrieve the The asked URL.

    url();

Parameters
----------

- None.

Return
------

- __url__ : String, The asked URL




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [ApmData](apmData.html)
 
onScanCompleted
===============

> Starts a listener on the apm scan and executes some actions when it changes.

    onScanCompleted(filters, callback);

Parameters
----------

- __[filters](scanCompletedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [ApmData](apmData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onDownloadCompleted
===================

> Starts a listener on the apm download and executes some actions when it changes.

    onDownloadCompleted(filters, callback);

Parameters
----------

- __[filters](downloadCompletedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [ApmData](apmData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onUploadCompleted
=================

> Starts a listener on the apm upload and executes some actions when it changes.

    onUploadCompleted(filters, callback);

Parameters
----------

- __[filters](uploadCompletedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [ApmData](apmData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
