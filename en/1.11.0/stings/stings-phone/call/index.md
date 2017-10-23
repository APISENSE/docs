---
layout: post
title: Call
---

> Handle operation on call sensor.

Usage
-----

`call` keyword is needed to instanciate this sting.

    var call = require('call');


Data accessors
--------------

- [carrier](#carrier)
- [contact](#contact)
- [duration](#duration)
- [neighbouringCells](#neighbouringcells)
- [timestamp](#timestamp)

Methods
-------

- [data](#data)

Events
------

- [onCallEnded](#oncallended)

Full Example
------------

    var call = require('call');
    var recorder = require('recorder');

    var dataResult = call.data();


    recorder.save({
        'carrier' : call.carrier(),
        'contact' : call.contact(),
        'duration' : call.duration(),
        'neighbouringCells' : call.neighbouringCells(),
        'timestamp' : call.timestamp(),
        'json' : call.data()
    });

    call.onCallEnded(function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


carrier
=======

> Retrieve the Current network carrier for the device..

    carrier();

Parameters
----------

- None.

Return
------

- __carrier__ : String, Current network carrier for the device.

contact
=======

> Retrieve the Hashed identity of the last contact..

    contact();

Parameters
----------

- None.

Return
------

- __contact__ : String, Hashed identity of the last contact.

duration
========

> Retrieve the Last call time, in seconds..

    duration();

Parameters
----------

- None.

Return
------

- __duration__ : Long, Last call time, in seconds.

neighbouringCells
=================

> Retrieve the Return the mobile cells available around the device..

    neighbouringCells();

Parameters
----------

- None.

Return
------

- __neighbouringCells__ : List, Return the mobile cells available around the device.

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
- [CallData](callData.html)
 
onCallEnded
===========

> Starts a listener on the call call and executes some actions when it changes.

    onCallEnded(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [CallData](callData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
