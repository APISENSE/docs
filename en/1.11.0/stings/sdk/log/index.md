---
layout: post
title: Log
---

> Handle operation on log sensor.

Usage
-----

`log` keyword is needed to instanciate this sting.

    var log = require('log');


Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [debug](#debug)
- [error](#error)
- [info](#info)

Full Example
------------

    var log = require('log');

    var dataResult = log.data();
    log.debug(message);
    log.error(message);
    log.info(message);




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
- [LogData](logData.html)

debug
=====

> Print with the debug level.

    debug(message);

Parameters
----------

- message (String): The message to print.
 
Returns
-------
- void

error
=====

> Print with the error level.

    error(message);

Parameters
----------

- message (String): The message to print.
 
Returns
-------
- void

info
====

> Print with the info level.

    info(message);

Parameters
----------

- message (String): The message to print.
 
Returns
-------
- void
 
