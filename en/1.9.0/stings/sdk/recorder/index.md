---
layout: post
title: Recorder
---

> Handle operation on recorder sensor.

Usage
-----

`recorder` keyword is needed to instanciate this sting.

    var recorder = require('recorder');


Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [save](#save)
- [sync](#sync)
- [sync](#sync)

Full Example
------------

    var recorder = require('recorder');

    var dataResult = recorder.data();
    recorder.save(data);
    recorder.sync();
    recorder.sync(header);




---


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
 - [RecorderData](recorderData.html)

save
====

> Save the data locally, waiting to be synchronised.

    save(data);

Parameters
----------

- data (Object): The json element to save.
 
Returns
-------
- Void

sync
====

> Call the synchronisation with the honeycomb sever of the previously saved records.

    sync();

Parameters
----------

- None.
 
Returns
-------
- Void

sync
====

> Call the synchronisation with the honeycomb sever of the previously saved records, with a custom header.

    sync(header);

Parameters
----------

- header (Map): Json element to add once to the exported data.
 
Returns
-------
- Void
 
