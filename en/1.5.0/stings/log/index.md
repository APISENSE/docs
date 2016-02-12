---
layout: post
---

Log
===

> Log some valuable information at runtime.

Usage
-----

`log` keyword is needed to instanciate this sting.

	var log = require('log');

Note: Right now we only use the OS log system.

Methods
-------

- [debug](#debug)
- [error](#error)
- [info](#info)

Full Example
------------

    var log = require('log');

    log.debug("Debug message");
    log.info("Info message");
    log.error("Error message");

debug
=====

Execute some operations repeatedly every specified time.

    debug(message)

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.

error
=====

Execute some operations repeatedly every specified time.

    error(message)

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.

info
====

Execute some operations repeatedly every specified time.

    info(message)

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.
